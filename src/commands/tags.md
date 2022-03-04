*所謂經驗，乃是人們為其錯誤貼上的標籤。*

# tags
你可以使用 `tags` 命令查看目前的<b>標籤篩選器</b>：
```sh
hs tags
```

執行後應呈現出以下結果：
```
known tags:
  util mytag hide
tag filters:
  pin = +pin,util
  no-hidden = +all,^hide! (mandatory)
  no-removed = +all,^removed! (mandatory)
main tag filter:
  +all
```

這麼多訊息！我們別一頭栽進去，先把注意力放在最後兩行：`main tag filter: +all`。這是什麼意思呢？

## main tag filter: +all (主要標籤篩選器)
<a id="main-filter"></a>
### 附加「+」
`+`符號在此表示**附加**，即<i>「將**主要標籤篩選器**附加於所有其它標籤篩選器上」</i>。

所謂其它篩選器，便是 `tags` 指令所印出來的一大串其它內容，在此我們不深入研究，只需有個概念：它們正是帶 __hide__ 標籤的腳本被藏起來的原因。

換句話說，如果少了 `+` 符號，則**主要標籤篩選器**將覆蓋掉所有其它篩選器，使它們通通失效。其中一個後果是，所有帶 __hide__ 標籤的腳本都將現身。

關於其它篩選器的細節，留到[標籤篩選器](../advanced_tag/filter.md)章節專門介紹。


### 標籤 all
若忽略`+`符號，只看**all**：這是一個標籤的名字。由於它是你的主要標籤篩選器，所有帶著 **all** 標籤的腳本都將通過篩選。

> 在 __hyper-scripter__ 中，所有腳本必然帶有 __all__ 這個標籤🪄

因此很自然地，目前的主要標籤篩選器並不會篩掉任何腳本。現在來做個實驗吧！請先確保你的腳本列表如[中場休息！](mid_break.md)所述，然後執行：

```sh
hs tags mytag
hs ls
```

結果應如下：

```
[#mytag]
*mv/script(txt)  script/with/tag(sh)  cp/script(sh)
```

這裡的結果與 [filter 指令](filter.md)  中呈現的十分類似，但你不再需要每次執行都帶上 `--filter`，可以真正做到根據不同工作切換標籤。

現在再次執行：

```sh
hs tags +all # 注意那個 `+` 符號，不要漏掉了！否則你將會看到隱藏腳本
hs ls
```

magic!! 所有腳本通通回來了。

### 預設標籤
主要標籤篩選還承擔著另一個作用：__預設標籤__。

先前介紹 [edit 指令](edit.md#--tags-標籤)時，提到使用 `--tags` 參數，讓新創的腳本帶有標籤。但能不能再偷懶一點？

事實上，只要你設定了**主要標籤篩選器**，之後新創的所有腳本都將帶有標籤。用法如下：

```sh
hs tags +mytag
hs edit script/with/default/tags
```

如此一來，新創的腳本便自然帶有 **mytag** 標籤了。
