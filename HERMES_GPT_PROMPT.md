# 🤖 Hermes Agent 配置 GPT 模型与原生生图避坑自动化配置 AI 提示词 (Prompt)

> **使用方法**：直接将本文下方的【Prompt 正文】完整复制，发送给任何 AI（ChatGPT / Claude / Cursor / Antigravity 等），AI 将自动为你完成本地 Hermes 环境检查、GPT/Codex 订阅绑定、原生云端生图后端激活，并彻底规避 Windows 客户端下的 `[Image blocked]` 前端拦截大坑。

---

## 📋 Prompt 正文（复制下方内容给 AI 即可）

```markdown
# 任务目标：为 Hermes Agent 配置 GPT 模型与原生云端生图能力（含 Windows 桌面端渲染避坑规范）

请你作为系统架构与运维专家，帮我配置本地 Hermes Agent 环境，使其无缝使用 GPT (OpenAI / Codex) 系列模型作为核心对话与推理引擎，同时激活官方原生生图能力，并修复解决客户端由于 Markdown 拦截导致的图片无法渲染缺陷。

---

## 一、背景与核心痛点（AI 必读避坑指南）

在配置 Hermes 使用 GPT 及其生图功能时，常见以下几个严重误区和技术坑点，请在执行时严格规避：

1. **不需要本地部署 ComfyUI / Stable Diffusion**：
   - 误区：许多人以为 Hermes 生图必须在本地安装几十 GB 的 ComfyUI、下载大型 Checkpoint 模型并占用大量本地显存。
   - 事实：Hermes 原生支持 `openai-codex` 生图后端，可直接复用现有的 ChatGPT Plus / Codex 登录会话调用云端原生生图接口（`gpt-image-2-medium`），零本地显存开销且出图质量极高。
2. **不需要额外单独申请付费 OpenAI API Key**：
   - 只要当前环境已完成 `openai-codex` 认证（或已有 ChatGPT Plus OAuth Token），即可直接共用该凭证，无需为生图单独充值计量扣费。
3. **【致命缺陷】Windows 桌面端 `[Image blocked]` 拦截**：
   - 缺陷现象：生图成功后，桌面端对话流中却显示 `[Image blocked: 图片名称]`，图片无法查看。
   - 根本原因：GPT 模型习惯使用通用 Markdown 格式输出 `![图片说明](D:\Hermes\...\image.png)`；而 Hermes Desktop（基于 Streamdown / CSP 安全策略）出于防恶意文件读取考虑，默认屏蔽通过 `![alt](D:\...)` 加载本地盘符路径。
   - 规避解法：Hermes 桌面端原生设计了专用的富媒体拦截协议——`MEDIA:/绝对路径`。只要在 Agent 的 `SOUL.md` 或系统提示词中强制规范模型输出 `MEDIA:D:\绝对路径\图片名.png`，桌面端就会自动识别并渲染为可点击全屏放大、缩放与一键下载的高清大图卡片！

---

## 二、第一阶段：账号授权与网络环境检查

1. **确认 Codex 认证状态**：
   - 检查本地是否已登录 Codex：运行 `hermes auth list` 或查看认证凭据目录（如 `~/.hermes/auth` / 环境变量 `AGY_ACCOUNT`）。
   - 若尚未登录，指导或执行 `hermes auth login openai-codex` 完成 ChatGPT Plus 账号授权绑定。
2. **网络代理检测（针对国内环境）**：
   - 访问 OpenAI Codex 接口需要稳定的海外节点，确保本地代理服务正常运行（如 Clash 本地端口 `http://127.0.0.1:7897`）。
   - 在 PowerShell / 环境中配置：
     ```powershell
     $env:HTTP_PROXY="http://127.0.0.1:7897"
     $env:HTTPS_PROXY="http://127.0.0.1:7897"
     ```

---

## 三、第二阶段：编辑 Agent 配置文件 (config.yaml)

请定位到目标 Profile 目录下的 `config.yaml`（例如全局 `~/.hermes/config.yaml` 或独立 Profile `profiles/<profile_name>/config.yaml`），确保包含以下配置段：

```yaml
# 1. 聊天主模型绑定 GPT
model:
  default: gpt-6-luna          # 或当前可用的 GPT/Codex 模型（如 gpt-5, gpt-4.1 等）
  provider: openai-codex

# 2. 启用官方原生云端生图后端（关键配置）
image_gen:
  provider: openai-codex
  model: gpt-image-2-medium    # 云端生图模型规格

# 3. 启用基础工具集
toolsets:
  - hermes-cli

# 4. 超时安全阀（云端高质量生图通常耗时 30~60 秒，防止网关过早断连）
agent:
  gateway_timeout: 1800
  tool_use_enforcement: auto
```

---

## 四、第三阶段：注入人设与交付规约 (SOUL.md)

请在目标 Profile 目录下的 `SOUL.md`（或全局 Agent 提示词）中，追加以下强制性输出协议，彻底杜绝前端 `[Image blocked]` 缺陷：

```markdown
## 媒体与生图交付规范（强制遵守）
1. 当调用生图工具 `image_generate` 成功获得本地图片文件后，向用户展示时**严禁使用** Markdown 图片嵌入语法 `![alt](D:\...)`。
2. **必须且只能使用 Hermes 官方富媒体交付格式**：
   `MEDIA:D:\绝对路径\图片名.png`
   （示例：`MEDIA:D:\Hermes\profiles\x-visual\cache\generated\images\sample.png`）
3. 说明：使用 `MEDIA:` 标签可被 Hermes 桌面客户端直接原生捕获，并渲染为高清可缩放、支持一键保存的交互式图片卡片；而 Markdown 图片语法会被桌面端安全机制直接拦截显示为 `[Image blocked]`。
```

---

## 五、第四阶段：闭环验证与测试

配置完成后，请按以下步骤进行端到端验证：
1. **模型连通性测试**：在 Hermes 中发送一条测试消息，确认响应由 `openai-codex` 极速返回。
2. **生图全链路测试**：发送指令如 `“帮我生成一张未来赛博朋克风格的雨夜东京壁纸”`。
3. **验收标准**：
   - 后端日志输出：`tool image_generate completed` 且返回本地 PNG 路径；
   - 界面渲染效果：聊天窗口正常展开内嵌高清图片大图，带有缩放与下载按钮，无 `[Image blocked]` 错误提示。
```
