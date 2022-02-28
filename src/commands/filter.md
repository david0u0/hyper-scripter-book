# filter
當你想要根據<b>標籤</b>篩選腳本時，便是使用 `filter` 的好時機。準備好[中場休息！](mid_break.md)的腳本結構，然後嘗試以下命令：

```sh
hs ls --filter mytag
# or shorter
hs ls -f mytag
```

您將看見：

```
[#mytag]
*script/with/tag(sh)
```


## 適用範圍
幾乎所有子命令都可加上 `--filter` 來限定範圍，包含：
- edit
	- 然而建立新腳本時不使用，否則視為冗餘的參數
- run
- ls
- mv/cp/rm
- which/cat/help
- history
	+ show
	+ rm
	+ neg
	+ ...
- ...

總之很多就對了……