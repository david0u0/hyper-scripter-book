# 初次使用

通常，安裝好一個軟體，我們都會迫不及待執行看看：

```sh
hs
```

這動作會打開 `vim` 編輯器並顯示 `util/readme.md` 文件，不習慣該編輯器的讀者，可輸入 `:q` 退出。 [^1]

看到這裡，讀者可能很疑惑：初次使用它開編輯器幹什麼呢？閱讀完本章節，你會發現這其實是方便且一致的體驗。

[^1]:  若想修改預設編輯器，請參閱 [編輯器](config_file.md#編輯器) 章節

## 建立你的第一個腳本
__hyper-scripter__ 由許多子命令構成，本小節只會使用以下三個命令：

- `ls`
- `edit`
- `run`

### hs ls
這個子命令會列出所有目前的腳本。第一次執行任何 __hyper-scripter__ 指令時，程式會默默為你建立一些好用的腳本，`util/readme.md` 也是其中之一。因此，你應該會看見類似下方的結果：

```
[#util]
*util/readme.md(txt)  util/historian(rb)
util/import(rb)       util/collect(rb)
```

### hs edit
這個子命令可用來建立新腳本，或是編輯既有的腳本：

```sh
hs edit uireme       # 模糊搜尋，將開啟 util/readme.md
hs e uireme          # 也可使用 `edit` 的別名 `e`
hs e my/first/script # 此名字不符合既有的腳本，故將開啟新腳本
```

利用上述命令開啟 `my/first/script` 腳本之後，在編輯器中寫一些簡單的指令，我們將在下個小節使用。例如： 

```sh
echo hello, scripter!
```

此外，`hs` 沒有任何子命令時，視同執行 `hs edit -`，即<b>「編輯最新的腳本」</b>──這就是為什麼我們在第一小節會打開那個 `util/readme.md` 了。

現在，再用一次 `hs ls` 檢視所有腳本，是不是能看到剛剛新建的腳本了呢？

### hs run
這個子命令可用來執行已存在的腳本：
```sh
hs run myfiscript # hello, scripter!
hs myfiscript     # run 可以被省略
hs -              # 執行最新腳本
```

就這樣！
