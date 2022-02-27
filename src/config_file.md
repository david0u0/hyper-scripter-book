# 設定檔
第一次執行 `hs` 指令，將創建設定檔於 `~/.config/hyper-scripter/.config.toml`，編輯這個設定檔將會改變程式的許多行為。

## 編輯器
`hs edit` 及 `hs types --edit {type}` 等命令將啟動編輯器供使用者互動。預設編輯器為 `vim`，但可從設定檔修改：
```toml
editor = ['vim'] # 改成任何你喜歡的指令，例如 editor = ['vim', '-u', 'NONE']
```
