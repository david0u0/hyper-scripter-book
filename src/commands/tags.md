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
  pin = [+pin,util]
  no-hidden = [+all,^hide!] (mandatory)
  no-removed = [+all,^removed!] (mandatory)
main tag filter:
  [+all]
```

這麼多訊息，我們先別一頭跳進去，不妨先把注意力放在最後兩行：`main tag filter: [+all]`。這是什麼意思呢？

## 標籤篩選器
在 __hyper-scripter__ 中，所有腳本都必然帶有 __all__ 這個標籤。因此

若您依照 [edit/標籤](commands/edit.md#--tags-標籤) 創建了具有標籤的腳本，再利用 `hs ls` 列出所有腳本，應該看到類似以下的訊息：

```
(no tag)
.2(rb)  .1(sh)  my/first/script(sh)
[#mytag]
*script/with/tag(sh)
[#util]
util/readme.md(txt)  util/historian(rb)  util/import(rb)  util/collect(rb)
```

此結果代表，你創建了一些<b>無標籤</b>的腳本 ，一個標籤為 __mytag__ 的 `script/with/tag`，而所有預設創建的腳本則帶有標籤 __util__。

這時，試試看指令 `hs tags +mytag`，然後再列出腳本，你會看見神奇的狀況：

```
[#mytag]
*script/with/tag(sh)
[#util]
util/readme.md(txt)  util/historian(rb)  util/import(rb)  util/collect(rb)
```

### 腳本變少了？
恭喜！你剛解鎖了 __hyper-scripter__ 的第一個進階功能：__標籤篩選機制__。透過標籤，你可以自由在多組工作間切換，隱藏不需要的腳本，使你專注在目前的工作上。

> 呃，所以我的腳本咧？？

先別緊張，所有腳本都好好的，只要執行：

```
hs tags +all
```

然後再次列出所有腳本──magic!! 那些腳本又通通回來了。

### 謎底揭曉
要瞭解剛剛發生的事，我們先，此時將看到：

```
known tags:
  util mytag hide
tag filters:
  pin = [+pin,util]
  no-hidden = [+all,^hide!] (mandatory)
  no-removed = [+all,^removed!] (mandatory)
main tag filter:
  [+mytag]
```

這麼看來就很明顯了，魔法就在最後兩行的 `main tag filter: [+mytag]` 中。
