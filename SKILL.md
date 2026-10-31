---
name: gcp-chain-proxy
description: Guide and setup scripts for building a zero-cost, anti-charge GCP Always Free chain proxy (Front Airport -> GCP VMess exit node) with multi-client support (Clash Verge Rev, Shadowrocket, Flclash).
---

# GCP Always Free Chain Proxy Skill

## Purpose
This skill provides automated guidance and exact configuration snippets to deploy a Google Cloud Always Free `e2-micro` instance as an exit node chained behind a commercial airport front proxy (`dialer-proxy` / `Proxy Through`), protecting against billing surprises and unlocking AI services with a clean Google residential/datacenter IP.

## Core Rules & Guardrails
1. **VM Specifications (Always Free strict compliance)**:
   - Machine type: `e2-micro` (2 vCPU, 1 GB RAM).
   - Region: `us-west1` (recommended), `us-central1`, or `us-east1`.
   - Disk: 30 GB Standard persistent disk (NOT SSD or Balanced).
   - Network Tier: **STANDARD** (DO NOT use Premium).
   - IP: Standard ephemeral dynamic IP (avoid static IP reservation fees).

2. **Anti-Charge Firewall Rules**:
   - Ingress: Allow TCP `8443` from `0.0.0.0/0`.
   - Egress: Deny CDN outbound traffic (`deny-cdn-egress-custom`) to prevent GFW probe reflection attacks.
   - Cloud Billing: Set $1 hard budget notification.

3. **Protocol Selection**:
   - **DO NOT USE VLESS-Reality inside nested chain proxies**: TLS ClientHello spoofing fails inside secondary tunnels in Mihomo/Clash Verge.
   - **USE VMess + WebSocket (No TLS)** on port `8443` with path `/gcp-ws`.

4. **Client Setup**:
   - **Clash Verge Rev (Mihomo)**:
     ```yaml
     - name: "GCP-Exit"
       type: vmess
       server: <GCP_IP>
       port: 8443
       uuid: <UUID>
       network: ws
       ws-opts:
         path: /gcp-ws
       dialer-proxy: "<Airport_Front_Node_Name>"
     ```
   - **Shadowrocket**:
     - Type: VMess, Server: `<GCP_IP>`, Port: `8443`, UUID: `<UUID>`, Transport: `websocket`, Path: `/gcp-ws`, TLS: `Disabled`.
     - Relay: `代理通过` (Proxy Through) -> select airport node.
     - Latency test: Set Connectivity Test method to `HTTP` (default TCP direct test will falsely show timeout).
   - **Flclash**:
     - Directly import the PC Clash YAML file.
