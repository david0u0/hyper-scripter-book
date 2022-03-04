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
*mv/script(txt)  script/with/tag(sh)  cp/script(sh)
```


## 腳本變少了？
恭喜！你剛解鎖了 __hyper-scripter__ 的第一個進階功能：__標籤篩選器__。透過標籤，你可以自由在多組工作間切換，隱藏不需要的腳本，使你專注在目前的工作上。

> 呃，所以我的腳本咧？？

先別緊張，所有腳本都好好的，只要執行正常的 `hs ls` 指令就能看見它們。`--filter mytag` 的用意便是**將關注範圍限縮於帶著 *mytag* 標籤的腳本**，所有其它腳本都將被暫時隱藏。

當然，每次使用都打上 `--filter mytag` 實在很累贅，根本談不上什麼工作切換。若想將標籤篩選設定成預設行為，請參閱 [tags 指令](tags.md#main-filter)。

## all v.s. hide
現在來個進階的指令：

```sh
hs ls --filter all
# or shorter
hs ls -a
```

你應該會看到一些之前沒看過的腳本：
```
.
...(other scripts)...
.
[#hide #util]
util/selector(rb)  util/common(rb)
```

可以注意到，這些腳本都帶有 __hide__ 標籤，故名思義，它們在平常都是隱藏起來的。如[初次使用](../first_usage.md#hs-ls)所述，第一次執行任何 __hyper-scripter__ 指令時，程式會默默為你建立一些好用的腳本，而它們往往有些功能可以共用。為此，我們將這些功能抽出來變成獨立的腳本。

這些腳本存在的目的僅是被其它腳本引用，為避免使用者直接執行它們，我們用 **hide** 標籤將它們藏到幕後。你也可以做個實驗：

```sh
hs mv script/with/tag -t hide
hs ls
```

如此一來，目標腳本應該就會從列表中消失。

那麼，為什麼加上 `--filter all` 之後，這些腳本又出現了呢？

> 在 __hyper-scripter__ 中，所有腳本必然帶有 __all__ 這個標籤🪄

所以，將**標籤篩選器**指定為 **all**，便相當於告訴 **hyper-scripter** 你想看到所有腳本，其中自然也包括了標籤為 __hide__ 的腳本。

至於為何帶著 **hide** 標籤的腳本平常會被藏起來，將在[標籤篩選器](../advanced_tag/filter.md)中詳述，現在可以先當它是魔法🪄

## 適用指令
不只 `ls`，幾乎所有子命令都可加上 `--filter` 來限定範圍，包含：
- run
- ls
- mv/cp/rm
- which/cat/help
- edit
	- 然而建立新腳本時不使用，否則視為冗餘的參數
- history
	+ show
	+ rm
	+ neg
	+ ...
- ...

比如：
```sh
hs run util/readme.txt
hs run -f mytag util/readme.txt # filtered out
hs cat -f mytag util/readme.txt # filtered out
hs cp -f mytag util/readme.txt ? # filtered out
hs edit -f mytag util/readme.txt # filtered out
```