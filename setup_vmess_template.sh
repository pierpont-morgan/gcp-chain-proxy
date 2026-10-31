#!/bin/bash
# 一键安装 Xray 并生成纯净 VMess + WebSocket 服务端配置
set -e

# 1. 安装最新官方 Xray
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install

# 2. 生成随机 UUID（也可自行指定）
UUID=$(xray uuid)
echo "生成的 UUID: $UUID"

# 3. 写入配置文件
cat <<EOF > /usr/local/etc/xray/config.json
{
  "log": {
    "loglevel": "warning"
  },
  "inbounds": [
    {
      "port": 8443,
      "protocol": "vmess",
      "settings": {
        "clients": [
          {
            "id": "$UUID",
            "alterId": 0
          }
        ]
      },
      "streamSettings": {
        "network": "ws",
        "wsSettings": {
          "path": "/gcp-ws"
        }
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}
EOF

# 4. 重启服务并设置开机自启
systemctl restart xray
systemctl enable xray

echo "========================================="
echo "Xray 服务已成功运行！"
echo "协议: VMess + WebSocket"
echo "端口: 8443"
echo "路径: /gcp-ws"
echo "UUID: $UUID"
echo "========================================="
