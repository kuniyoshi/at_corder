# 結果

| 問題 | 結果 | 提出時間            | かかった時間 |
|------|------|---------------------|--------------|
| A    | AC   | 2022-03-12 21:08:15 | 9 min        |
| B    | AC   | 2022-03-12 21:12:48 | 5 min        |
| C    | AC   | 2022-03-12 21:36:12 | 25 min       |
| D    | AC   | 2022-03-12 22:26:25 | 50 min       |
| E    | -    | -                   |     min      |

# A

## 振り返り

難しかったです。

A なのでループは出ないと思って始めましたが、
誰でもない場合はどうなるんだろうと思って入力例を
みたらシミュレーション的にはループするようです。

植木算を心配しつつ mod を入れて対応しました。

## 解説をみたあと

難しかったみたいです。

# B

## 振り返り

B は A に比べて問題文がわかりやすいですね。

## 解説をみたあと

そういえばハッシュしませんでした。
B 問題の解き方に、染まっちゃいましたね。
前はハッシュ使ってたところです。

# C

## 振り返り

WA x 1

並べ替えで O(N log N) ですね。

2 回連続で C を解けてなかったのでこんなのでいいのか
と思いながら書いていました。

その割に考えをまとめるのに時間がかかったりコーディングを
ミスったりしました。

## 解説を見たあと

もう少し考察を進めると「隣接する」まで行けたんですね。
辿り着けてませんでした。

でもコードは上手くかけてると思います。

# D

## 振り返り

WA x 2, TLE x 1

最初は問題文が間違っているのかと思っていました。
途中でオーバフローしない保証がない文章だったので
間違っていない？とか思ってました。

単純なコードで提出して WA したので、正解がオーバフロー
しない、という保証を途中もオーバフローしない、という
保証に変えることが求められているんだとわかりました。

bigint 使えば考えなくて済むんじゃないかってやってみたら
TLE しました。 10^6 くらいならできるんじゃないかと
思いましたがだめでしたね。手元の pc で 3 秒かかるので
判定マシンだともう少しかかりそうですね。

考えるのに時間がかかりましたが、解き方はすぐに
わかりますね。

perl だと WA したので C# に書き換えて AC しました。

ノードを 0 数えにするか、とか親は /2 でいいのか
とかを考えていました。

## 解説を見たあと

# E

## 解説を見たあと
