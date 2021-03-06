# 搜尋方式

第一次接觸 __hyper-scripter__ 的使用者，只要會用**模糊搜尋**就能通關常用命令教學了（就是打出腳本的名字，隨便省略幾個字母啦）。

本章節中，我們將介紹所有搜尋方式和其運作原理，讓你成為搜尋大師。

最廣泛、何處都可使用的搜尋方式為：

- 模糊搜尋
	+ `hs {NAME}` - 找到和 `{NAME}` 最像的腳本
- 時序搜尋
	+ `hs ^{N}` - 找到第 `{N}` 新的腳本
- 精確搜尋
	+ `hs ={NAME}` - 找到名字完全等於 `{NAME}` 的腳本

當命令接受多個腳本（如 `mv`, `rm`, `ls` 等）時，可以再加上

- 列表搜尋
	+ 例如：`hs a/*bc/d*`，找到所有符合該模式的腳本

最後，上述所有搜尋方式都可以加上 __bang!__，即驚嘆號結尾，可忽略[近期](../recent_filter.md)、[標籤](../advanced_tag/filter.md)等所有篩選器。

- `hs {NAME}!`
- `hs ^{N}!`
- `hs ={NAME}!`
- `hs a/*bc/d*!`