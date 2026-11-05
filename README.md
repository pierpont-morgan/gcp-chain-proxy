# 馃殌 GCP 姘镐箙鍏嶈垂鏈?(Always Free) + 閾惧紡鍔犻€熻惤鍦拌妭鐐瑰疄鎴樺叏鎸囧崡

> 浠?0 鍒?1 鎵撻€犳瀬閫熴€佺函鍑€ Google IP銆佸厤閬处鍗曞弽鍣殑姘镐箙鍏嶈垂浠ｇ悊涓浆鏂规銆? 
> 鍏煎 **PC锛圕lash Verge Rev锛?* 涓?**绉诲姩绔紙Shadowrocket 灏忕伀绠?/ Flclash锛?*銆?
---

## 馃専 鏂规鏍稿績浼樺娍

1. **缁濆绾噣鐨?Google 瀹樻柟鍘熺敓 IP**锛?   * 瀹岀編瑙ｉ攣 ChatGPT銆丆laude銆丟oogle Gemini 绛夎嫑鍒?AI 骞冲彴锛屽憡鍒?Cloudflare 鐩惧拰鏈哄櫒浜洪獙璇佺爜銆?2. **0 鍏冪櫧瀚栵紝鍧氬喅闃插弽鍣?*锛?   * 涓ユ牸閬靛惊 Google Cloud Always Free锛堟案涔呭厤璐癸級鏍囧噯銆?   * 閰嶇疆**鍑虹珯闃茬伀澧欙紙闃?CDN 鎵洏鐖嗘祦閲忥級**涓?**$1 棰勭畻纭璀?*銆?3. **閾惧紡涓浆锛堟満鍦哄墠缃?-> GCP 钀藉湴锛?*锛?   * 鐮撮櫎 GCP 寤変环 Standard 绾胯矾鐩磋繛鍥藉唴鐨勯珮寤惰繜涓庝涪鍖呫€?   * 娴侀噺璺緞锛歚鏈湴璁惧 -> 鏈哄満楂橀€熻妭鐐?-> GCP 缇庤タ鏈烘埧 -> 鐩爣缃戠珯`銆?   * 鑺傜偣闂达紙缇庤タ鏈哄満鍑哄彛 -> GCP 淇勫嫆鍐堬級寤惰繜浠?10~30ms锛岀鍒扮寤惰繜浣庤嚦 180ms锛岀湡缁垮欢杩熴€?
---

## 馃彈锔?鏋舵瀯鎷撴墤鍥?
```mermaid
flowchart LR
    A["馃摫 鎵嬫満 (Shadowrocket / Flclash)<br/>馃捇 鐢佃剳 (Clash Verge Rev)"] -->|"鍓嶇疆鍔犲瘑闅ч亾"| B["鉁堬笍 鏈哄満鍓嶇疆鑺傜偣<br/>(棣欐腐/鏃ユ湰/缇庤タ绛?"]
    B -->|"缇庡浗澧冨唴浣庡欢杩熷唴鑱?| C["鈽侊笍 GCP e2-micro 钀藉湴鏈?br/>(35.212.x.x 路 us-west1)"]
    C -->|"绾噣 Google 鍑哄彛"| D["馃寪 鐩爣缃戠粶<br/>(OpenAI / Claude / Google)"]
```

---

## 馃洝锔?绗竴閮ㄥ垎锛欸CP 鍏嶈垂瀹炰緥鍒涘缓涓庨槻鍙嶅櫖璁剧疆

### 1. 瀹炰緥瑙勬牸瑕佹眰锛堜弗鏍煎鐓э級
* **鏈哄瀷**锛歚e2-micro`锛? vCPU锛? GB 鍐呭瓨锛?* **鍖哄煙 (Zone)**锛氫粎闄愪互涓嬩笁涓尯鍩熶箣涓€锛堝繀椤诲畬鍏ㄧ鍚堬級锛?  * `us-west1`锛堜縿鍕掑唸锛屾帹鑽愶紝绂讳簹澶渶杩戯級
  * `us-central1`锛堢埍鑽峰崕锛?  * `us-east1`锛堝崡鍗＄綏鏉ョ撼锛?* **绯荤粺鐩?*锛?0 GB 鏍囧噯姘镐箙鎬х鐩橈紙Standard persistent disk锛屽嬁閫?SSD/Balanced锛?* **鎿嶄綔绯荤粺**锛欴ebian 12 鎴?Ubuntu 22.04 LTS
* **缃戠粶鏈嶅姟灞傜骇**锛?*鏍囧噯 (Standard)**锛堝垏鍕块€夋嫨 Premium 浼樿川灞傜骇锛屾爣鍑嗗眰绾ф墠鏈夊厤璐归搴︼級
* **澶栭儴 IP**锛氫复鏃?(Ephemeral) 鍗冲彲锛屼笉瑕佷繚鐣欓棽缃湭闄勫姞鐨勯潤鎬?IP锛堥棽缃敹璐癸級銆?
### 2. 閬垮厤鈥滆鍙嶅櫖鈥濈殑闃茬伀澧欏畨鍏ㄧ瓥鐣?寰堝鏁欑▼鏁欏畬灏辫蛋锛屽鑷村緢澶氬皬浼欎即琚?GFW 鎺㈡祴鍣ㄧ媯鍒?GCP 鍏嶈垂娴侀噺鍑虹珯锛屼骇鐢熷ぉ浠?CDN 璐﹀崟銆傚繀椤诲湪 GCP 闃茬伀澧欎腑鍋氬ソ闃叉姢锛?
#### 鈶?鍏ョ珯鏀捐鑺傜偣绔彛
鍦?GCP VPC 缃戠粶 -> 闃茬伀澧欒鍒?-> 鍒涘缓瑙勫垯锛?* **鍚嶇О**锛歚allow-vmess-proxy`
* **鏂瑰悜**锛氬叆绔?(Ingress)
* **鐩爣**锛氱綉缁滀腑鐨勬墍鏈夊疄渚?* **鏉ユ簮 IPv4 鑼冨洿**锛歚0.0.0.0/0`
* **鍗忚涓庣鍙?*锛歍CP 鎸囧畾绔彛 `8443`

#### 鈶?鍑虹珯鎷︽埅 CDN 鍋疯窇娴侀噺锛堝叧閿槻鎶わ級
* **鍚嶇О**锛歚deny-cdn-egress-custom`
* **鏂瑰悜**锛氬嚭绔?(Egress)
* **鎿嶄綔**锛氭嫆缁?(Deny)
* **鐩爣**锛氱綉缁滀腑鐨勬墍鏈夊疄渚?* **鐩爣 IPv4 鑼冨洿**锛氭嫤鎴父瑙佺殑 CDN IP 缃戞锛堜緥濡?Fastly銆丄kamai 绛夊父瑙佸埛娴侀噺鍥炴簮缃戞锛夈€?* **鍗忚涓庣鍙?*锛氬叏閮ㄥ厑璁搁樆鏂€?
#### 鈶?璁剧疆 $1 棰勭畻棰勮
鍦?GCP Billing锛堢粨绠楋級-> 棰勭畻涓庢彁閱?-> 鍒涘缓棰勭畻锛?* 鐩爣閲戦璁句负 **$1.00**
* 瑙﹀彂闃堝€硷細50%銆?0%銆?00% 瑙﹀彂閭欢鍛婅銆備竴鏃︽湁浠讳綍鎵ｈ垂锛屾墜鏈虹涓€鏃堕棿鏀跺埌閫氱煡銆?
---

## 鈿欙笍 绗簩閮ㄥ垎锛氬皬楦℃湇鍔＄閰嶇疆锛圴Mess + WebSocket锛?
缁忚繃娣卞害瀹炴祴锛?*VLESS-Reality 宓屽鍦ㄤ簩绾ч摼寮忎唬鐞嗕腑锛屾瀬鏄撳彂鐢?ClientHello/SNI 鎹熸瘉涓庨樆鏂?*銆傛渶浣炽€佹渶绋冲畾銆佸绔€氱敤鐨勬柟妗堟槸锛?*绾噣 VMess + WebSocket**銆?
### 1. 瀹夎 Xray
鍦?GCP 瀹炰緥涓墽琛岋細
```bash
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
```

### 2. 閰嶇疆 `/usr/local/etc/xray/config.json`
```json
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
            "id": "浣犵殑UUID濉湪杩欓噷",
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
```

### 3. 鍚姩骞跺紑鏈鸿嚜鍚?```bash
sudo systemctl restart xray
sudo systemctl enable xray
```

---

## 馃捇 绗笁閮ㄥ垎锛氬鎴风閰嶇疆

### 1. 鐢佃剳绔細Clash Verge Rev锛圡ihomo 鍐呮牳锛?鍦?Clash 閰嶇疆鏂囦欢鐨?`proxies:` 鍒楄〃涓姞鍏?GCP 钀藉湴鑺傜偣锛屽苟浣跨敤 `dialer-proxy` 鎸囧悜浣犵殑鏈哄満鑺傜偣锛?
```yaml
proxies:
  # 1. 浣犵殑鍓嶇疆鑺傜偣锛堟満鍦烘彁渚涚殑鐜版湁鑺傜偣锛屾敮鎸?Shadowsocks / VMess / Trojan / SOCKS5锛?  - name: 馃嚭馃嚫 缇庡浗纭呰胺鍓嶇疆
    type: socks5
    server: 鏈哄満鏈嶅姟鍣ㄥ煙鍚嶆垨IP
    port: 443
    # ... 璁よ瘉鍙傛暟 ...

  # 2. GCP 閾惧紡钀藉湴鑺傜偣
  - name: "馃殌 GCP-閾惧紡鍔犻€?
    type: vmess
    server: 35.212.x.x        # 浣犵殑 GCP 澶栭儴 IP
    port: 8443
    uuid: 浣犵殑UUID濉湪杩欓噷
    alterId: 0
    cipher: auto
    network: ws
    ws-opts:
      path: /gcp-ws
    dialer-proxy: "馃嚭馃嚫 缇庡浗纭呰胺鍓嶇疆" # 鏍稿績锛氭祦閲忓厛杩囧墠缃妭鐐?```
鍦ㄧ瓥鐣ョ粍锛坄proxy-groups`锛変腑锛屾妸 `馃殌 GCP-閾惧紡鍔犻€焋 鍔犲叆 `PROXIES` 鎴栬鍒欑粍锛屽嵆鍙疄鐜扮湡缁垮欢杩熸祴閫熶笌娴佺晠鍐叉氮锛?
---

### 2. 鎵嬫満绔細灏忕伀绠紙Shadowrocket锛?
#### 绗竴姝ワ細娣诲姞鑺傜偣
浣跨敤鏍囧噯 VMess 鏍煎紡瀵煎叆锛堟垨鐩存帴鎵弿浜岀淮鐮侊級锛?* **绫诲瀷**锛歏mess
* **鏈嶅姟鍣?*锛歚浣犵殑GCP澶栭儴IP`
* **绔彛**锛歚8443`
* **UUID**锛歚浣犵殑UUID`
* **娣锋穯鏂瑰紡**锛歚websocket`
* **璺緞**锛歚/gcp-ws`
* **TLS**锛?*鍏抽棴**

#### 绗簩姝ワ細璁剧疆閾惧紡涓浆锛堜唬鐞嗛€氳繃锛?1. 瀵煎叆鍚庡湪鍒楄〃涓壘鍒拌鑺傜偣锛岀偣鍑诲彸渚?**`(i)` 璇︽儏鍥炬爣**銆?2. 寰€涓嬫媺锛岀偣鍑?**銆屼唬鐞嗛€氳繃銆?*锛?Proxy Through*锛夈€?3. 鍕鹃€変綘鐨?*鏈哄満鍓嶇疆鑺傜偣**锛岀偣鍑诲彸涓婅淇濆瓨銆?
#### 甯歌鍧戦伩鍧戞寚鍗楋細
> **涓轰粈涔堥椤佃繛閫氭€ф祴璇曟樉绀衡€滆秴鏃垛€濓紝浣嗗疄闄呰兘绉掑紑缃戦〉涓旇惤鍦?IP 鏄鐨勶紵**  
> 灏忕伀绠椤垫祴閫熼粯璁ゆ槸 **TCP 鐩磋繛娴嬮€?*锛屽畠涓嶄細璧扳€滀唬鐞嗛€氳繃鈥濓紝鐩存帴杩?GCP 琚浗鍐呭鎷︽埅鎵€浠ユ姤瓒呮椂銆? 
> **瑙ｅ喅鍔炴硶**锛氬幓灏忕伀绠?**璁剧疆 -> 杩為€氭€ф祴璇?-> 娴嬭瘯鏂规硶 -> 鏀逛负 HTTP**锛屾祴閫熷嵆鍙樉绀烘甯哥殑缁胯壊鐪熷疄寤惰繜锛?
---

### 3. 鎵嬫満绔細Flclash
* Flclash 閲囩敤涓庣數鑴戝畬鍏ㄤ竴鑷寸殑 Mihomo 鍐呮牳銆?* 鐩存帴灏嗙數鑴戠閰嶅ソ鐨?`.yaml` 閰嶇疆鏂囦欢閫氳繃寰俊/AirDrop 鍙戦€佸埌鎵嬫満銆?* 閫夋嫨鈥滅敤 Flclash 鎵撳紑瀵煎叆鈥濓紝寮€绠卞嵆鐢紝鏃犻渶浠讳綍浜屾绻佺悙閰嶇疆銆?
---

### 4. 杩涢樁鐜╂硶锛歍ailscale 鍑哄彛鑺傜偣 + Clash 鑱斿姩锛堟嫰鏁戝畨鍗撳崟 VPN 鍐茬獊锛?
璁稿灏忎紮浼村湪瀹夊崜鎵嬫満涓婇亣鍒颁竴涓棝鐐癸細**瀹夊崜绯荤粺鍙厑璁镐竴涓?VPN 鐢熸晥**锛屽紑浜?Tailscale 杩炲閲屽唴缃戯紝灏辨棤娉曞紑浠ｇ悊缈诲锛涘紑浜嗕唬鐞嗗氨鏂簡鍐呯綉銆?
**缁堟瀬瑙ｆ硶**锛氭妸瀹堕噷甯稿紑鐨?Windows/Mac 鐢佃剳璁句负 Tailscale 鍑哄彛鑺傜偣锛圗xit Node锛夛紝鎵嬫満鍦ㄥ鍙渶寮€涓€涓?Tailscale 杩炲洖鐢佃剳锛岀數鑴戝啀閫氳繃 Clash 閾惧紡浠ｇ悊鍑烘捣锛?
#### 閬垮潙鏍稿績锛氳В鍐?`UDP: false` 瀵艰嚧鐨?600ms 涓户鎱㈤€?褰?Clash Verge 寮€鍚?TUN 妯″紡鏃讹紝浼氶粯璁ゆ嫤鎴?Tailscale 鐨?STUN 鎺㈡祴鍖咃紝瀵艰嚧 Tailscale 鍒ゅ畾鑷韩鏃?UDP 鑳藉姏锛岃杩檷绾ц蛋鎷ュ牭鐨勯娓叕鍏变腑缁э紙DERP relay锛夈€?
**瑙ｅ喅鍔炴硶**锛氬湪 Clash 閰嶇疆鏂囦欢鐨?`rules:` 椤堕儴鍔犲叆鏀捐鐧藉悕鍗曪紝骞朵繚鎸?**`[ 瑙勫垯 ]`** 妯″紡锛?```yaml
rules:
  # 1. 鏀捐灞€鍩熺綉
  - GEOIP,LAN,DIRECT,no-resolve

  # 2. 鏀捐 Tailscale 杩涚▼涓?WireGuard 绔彛锛堜繚闅?P2P 绌块€忔墦娲烇級
  - PROCESS-NAME,tailscaled.exe,DIRECT
  - PROCESS-NAME,tailscale-ipn.exe,DIRECT
  - IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
  - DST-PORT,41641,DIRECT

  # 3. 鍏滃簳鎵€鏈夊缃戣蛋鍥哄畾 GCP 閾惧紡鍑哄彛
  - MATCH,PROXIES
```
鍚屾椂鍦ㄥ閲岃矾鐢卞櫒鍚庡彴寮€鍚?**UPnP** 鎴栨槧灏?UDP `41641`锛屽嵆鍙鎵嬫満鍦ㄥ閮?4G/5G 涓嬩篃鑳界洿杩炲閲岀數鑴戯紝瀹炵幇鈥滃唴缃戠洿杈?+ 澶栫綉鏋侀€熷師鐢熷嚭鍙ｂ€濅簩鍚堜竴锛?
> 馃挕 **閰嶅 AI 鎻愮ず璇?*锛氭兂瑕佽 AI 鑷姩甯綘鎺掓煡绯荤粺璁剧疆涓庢敞鍏ヨ鍒欙紵璇风洿鎺ヤ娇鐢細[Tailscale 鍑哄彛鑺傜偣涓?Clash 鍐茬獊淇 AI Prompt (TAILSCALE_PROMPT.md)](TAILSCALE_PROMPT.md)銆?
---

## 馃 杩涢樁閰嶅锛欰I 鑷姩鍖栭厤缃彁绀鸿瘝搴?(Prompt Hub)

鏈粨搴撴彁渚涘紑绠卞嵆鐢ㄣ€佺粡杩囧弽澶嶅疄娴嬭俯鍧戦獙璇佺殑绯荤粺绾?AI 鎻愮ず璇嶏紝鍙洿鎺ュ鍒剁粰浠讳綍 AI 鍔╂墜锛圕hatGPT / Claude / Cursor / Antigravity 绛夛級鍏ㄨ嚜鍔ㄦ墽琛岋細

* **[Tailscale 鍑哄彛鑺傜偣涓?Clash TUN 鍐茬獊淇 AI Prompt](TAILSCALE_PROMPT.md)**  
  瑙ｅ喅 `UDP: false` 鎺㈡祴琚姭鎸併€丏ERP 鎱㈤€熶腑缁ч檷绾э紝鎵撻€氱Щ鍔ㄧ涓庡搴烦鏉跨綉缁溿€?* **[Hermes Agent 閰嶇疆 GPT 妯″瀷涓庡師鐢熺敓鍥鹃伩鍧戞寚鍗?AI Prompt](HERMES_GPT_PROMPT.md)**  
  鏃犵紳澶嶇敤 ChatGPT Plus (Codex) 璁㈤槄椹卞姩 Hermes锛屽紑鍚畼鏂瑰師鐢熶簯绔敓鍥撅紙闆舵樉瀛樺崰鐢ㄣ€佹棤闇€閮ㄧ讲 ComfyUI銆佹棤闇€浠樿垂 API Key锛夛紝褰诲簳瑙勯伩 Windows 妗岄潰绔?`[Image blocked]` 鏈湴璺緞鎷︽埅澶у潙銆?
---

## 鉂?甯歌闂瓟 FAQ

**Q锛氬墠缃唬鐞嗛€?SOCKS5 杩樻槸 HTTP锛?*  
**A**锛氭棤鑴戦閫?**SOCKS5**銆係OCKS5 鍦ㄤ紶杈撳眰鐩存帴杞彂绾簩杩涘埗鏁版嵁娴侊紝鎻℃墜鏋佸揩銆佸紑閿€鏈€灏忋€佸畬鍏ㄤ笉绡℃敼鎶ユ枃锛屼笖鏀寔 UDP銆?
**Q锛氫负浠€涔堜笉鎺ㄨ崘 VLESS-Reality 鍋氶摼寮忎唬鐞嗭紵**  
**A**锛歊eality 渚濊禆鍦?TLS ClientHello 闃舵浼鎸囧畾澶у巶鍩熷悕鐨勮瘉涔︽彙鎵嬨€傚綋瀹冭鍖呰９杩涚浜屽眰浠ｇ悊闅ч亾锛坄dialer-proxy`锛夋椂锛孴LS 鎶ユ枃宓屽鏋佹槗鍑虹幇鍏煎鎬ч樆鏂垨鎻℃墜璁よ瘉澶辫触锛屾帓鏌ユ瀬涓虹棝鑻︺€傝€?VMess+WS 鏄ぉ鐢熷鍚堝灞傞毀閬撳祵濂楃殑瀹岀編鏂规銆?
---

## 馃搫 License
MIT 漏 2026. 娆㈣繋鑷敱 Fork 涓庡垎浜紒鑻ユ湁鏀惰幏璇风粰涓?Star 猸愶笍锛?