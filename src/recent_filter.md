# 近期篩選

```
hs ls --recent 1
```

[設定檔](config_file/index.md#近期篩選)

## history neglect 忽略 

## --archaeology 考古

## 打破近期篩選的事件
+ 包括
	- 創建
	- 執行
	- 修改
		* edit/mv/cp/rm
	- 上述事件的[謙卑事件](humble.md)
+ 不包括
	- 讀取 [^1]
	- 錯過

[^1]: 由於修改會打破近期篩選，讀取卻不會，因此若你[編輯腳本後未存檔](commands/edit.md#未存檔編輯)，將不會紀錄修改時間，不會打破近期篩選