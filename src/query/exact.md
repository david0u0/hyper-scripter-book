# 精確搜尋
在創建新腳本時，我們有時會遇到以下問題：

```sh
hs edit name2 --fast
hs edit name # 搜尋到 name2 了！
```

受既存腳本影響，我們無法建立名字較短的腳本，但透過<b>精確搜尋</b>，便能指定新腳本完整的名字，避免模糊搜尋的遮避效果。

欲使用精確搜尋，需在名字前加上 `=` 符號，例如：

```sh
hs edit =name # 精確搜尋
```

如此便能創建出名為 `name` 的腳本。[^1]

除了編輯命令，所有選擇腳本的場合都能使用精確搜尋。通常，如果是用其它程式執行 __hyper-scripter__（`util/historian.rb` 即是一例），使用精確搜尋能避免找到意外的腳本，同時也會略微提升效能。

[^1]: 當多個腳本有前綴關係，查詢時將使用特殊規則，見[模糊前綴](fuzz_prefix.md)