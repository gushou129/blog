---
title: screen小知识
categories: 还是学一点吧
date: 2026-04-03 10:43:11
---

```bash 
# -m screen_app_name 强制建立新的screen_app_name
# -d screen_app_name 将该screen_app_name 离线静默
# -S screen_app_name 将该screen_app_old_name 更改为screen_app_name
screen -dmS screen_app_name ./bash_script.sh
# 退出窗口并保存当前状态
<c-a><c-d>
```

