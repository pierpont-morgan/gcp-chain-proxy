# 🤖 Tailscale 出口节点与 Clash/Mihomo 冲突修复及自动化配置 AI 提示词 (Prompt)

> **使用方法**：直接将本文下方的【Prompt 正文】完整复制，发送给任何 AI（ChatGPT / Claude / Cursor / Gemini 等），AI 将自动为你完成本地系统设置检查、YAML 规则注入与健康检查。

---

## 📋 Prompt 正文（复制下方内容给 AI 即可）

```markdown
# 任务目标：配置 Tailscale 出口节点并修复与 Clash/Mihomo 的冲突（含 YAML 规则与本地系统设置）

## 一、背景与核心痛点（AI 必读避坑指南）
在 Windows/macOS 本地电脑上，当同时运行 Tailscale（作为 Exit Node / 内网穿透）与 Clash/Mihomo（TUN 虚拟网卡模式）时，经常出现以下严重冲突：
1. **UDP 穿透被劫持**：Clash TUN 默认劫持了系统的全部 UDP 流量，导致 Tailscale 无法进行公网 STUN 探测，`tailscale netcheck` 报 `UDP: false`，使得设备间无法建立 P2P 直连（Direct Connection）。
2. **降级走公共中继（DERP Relay）**：直连失败后，Tailscale 只能绕道官方香港/海外公共中继服务器，导致网络延迟飙升到 600ms~1500ms，带宽被限速至 1Mbps 甚至网页断流打不开。
3. **安卓/移动端双 VPN 冲突**：安卓系统只允许一个活动 VPN，用户希望通过打通这台本地电脑作为跳板，实现内网直连与外网分流。

请按照以下结构化步骤，协助我完成全套配置与排查。

---

## 二、第一阶段：本地电脑系统设置（以 Windows 为例）

请按顺序提供并执行以下系统的底层网络转发与防火墙命令：

1. **开启系统底层 IP 转发（IP Forwarding）**：
   - 检查并开启系统的 IPv4 路由转发功能（如 Windows 注册表 `IPEnableRouter = 1`，以及网卡 `Set-NetIPInterface -Forwarding Enabled`）。
2. **声明为 Tailscale 出口节点（Exit Node）**：
   - 运行命令行：`tailscale up --advertise-exit-node`（若已有其他参数如 `--unattended` 请一并保留）。
   - 提醒并指引用户前往 Tailscale 网页后台（https://login.tailscale.com/admin/machines），在当前设备的 `Edit route settings` 中勾选并批准 `Use as exit node`。
3. **放行本地防火墙**：
   - 在 Windows 高级防火墙中，放行入站与出站的 Tailscale WireGuard 监听端口（UDP `41641`），避免跨网段与移动流量数据包被系统静默丢弃。
4. **NAT 穿透开门建议**：
   - 提醒用户检查家庭路由器后台是否开启 **UPnP**，或为当前电脑配置 UDP 端口 `41641` 的端口转发（Port Forwarding），确保手机使用 4G/5G 蜂窝网络时能成功打洞建立直连。

---

## 三、第二阶段：Clash / Mihomo 的 YAML 配置文件改造

请读取并修改我当前的 Clash/Mihomo 配置文件（如 `.yaml` 格式），遵循以下严格规范：

1. **编码标准（强制）**：
   - 读写配置文件必须严格采用 **UTF-8（无 BOM）** 编码，严禁使用 Windows 默认的 GBK/ANSI 编码，防止节点名称中的中文或 Emoji 出现乱码导致 Clash 内核崩溃。
2. **白名单直连规则注入（核心修复）**：
   - 必须确保 Clash 处于 **`[ 规则 (Rule) ]`** 模式（全局模式下 Clash 会忽略规则强行劫持 UDP）。
   - 在配置文件的 `rules:` 列表**最顶部**，插入以下 Tailscale 专属直连放行规则：
     ```yaml
     rules:
       # 1. 放行局域网内网通信
       - GEOIP,LAN,DIRECT,no-resolve

       # 2. 放行 Tailscale 核心进程与流量（确保 STUN 握手与打洞不走代理）
       - PROCESS-NAME,tailscaled.exe,DIRECT
       - PROCESS-NAME,tailscale-ipn.exe,DIRECT
       - IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
       - DST-PORT,41641,DIRECT

       # 3. 兜底所有外网流量走代理策略组（确保海外网站不跳 IP、不漏国内 IP）
       - MATCH,PROXIES
     ```
3. **保留原有代理组与节点**：
   - 严禁篡改原配置中已有的节点列表、密码密钥及原有的策略组配置。

---

## 四、第三阶段：验证与验收标准

配置完成后，请运行以下检测命令并向我输出验证结果：

1. **运行 `tailscale netcheck`**：
   - 验证输出中必须为：`* UDP: true`；
   - 验证必须成功识别出本机的公网 IPv4 / IPv6 映射，证明打洞能力已完全恢复。
2. **运行 `tailscale status`**：
   - 查看当前电脑状态是否显示为 `offers exit node`；
   - 检查已连接的客户端（如手机）是否显示为 **`active; direct <IP:端口>`**，坚决不能出现 `relay "hkg"` 等中继走样情况。
3. **运行 `tailscale ping <手机Tailscale IP>`**：
   - 局域网下延迟应为 `< 5ms`；
   - 外部 4G/5G 流量直连下延迟应为 `< 50ms`，且第一行必须显示 `pong via ... (direct)`。
```