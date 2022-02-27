# alias

執行 `hs alias`，你會看到類似下方的結果：

```
e="edit"
la="ls -a"
ll="ls -l"
l="ls --grouping none --name --limit 9"
gc="rm --purge -f removed --timeless *"
neg="history neglect"
```

它們是 __hyper-scripter__ 預設的別名。你也可以使用該指令新增自己的別名：

```sh
hs alias tree ls --grouping tree # 設定一個名為 `tree` 的別名
hs alias -u tree                 # 取消掉該別名
```

使用這些別名會讓接下來的操作順利許多（尤其四個字母的 `edit` 實在太囉嗦了……），因此我們放在所有命令前介紹它。