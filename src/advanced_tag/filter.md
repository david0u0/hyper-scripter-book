# 標籤篩選器
讓我們再看一次 `hs tags` 輸出的訊息。閱讀本章節後，您將完全瞭解這串文字在講些什麼。

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

## 附加「+」

## 多個 --filter 參數