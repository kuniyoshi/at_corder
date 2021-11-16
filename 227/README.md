# 結果

| 問題 | 結果 | 提出時間            | かかった時間 |
|------|------|---------------------|--------------|
| A    | AC   | 2021-11-13 21:17:46 | 18 min       |
| B    | AC   | 2021-11-13 21:26:59 | 10 min       |
| C    | -    | -                   |     min      |
| D    | -    | -                   |     min      |
| E    | -    | -                   |     min      |

# A

## 振り返り

難しくて時間かかりました。1 足したり引いたりする考えに
時間がかかります。

## 解説をみたあと

特にいいやり方があるわけでもなく、普通にできることみたいです。

# B

## 振り返り

1000 * 1000 の計算量で正解かもしれないマップを作れたので、
マップになければ間違っているとして解きました。

## 解説をみたあと

特にありません。もっと速く解けるようになりたいです。

# C

## 振り返り

ずっと ABC = N と思って解いていました。問題はちゃんと読まないと
いけません。ABC = N の場合だと、

1. 素因数分解して、
2. 数列とみなして、仕切りを二つ差し込む組み合わせは何個か

という問いに変換できると思ったのでそれで書きました。
数分前に書き終わりが見えたのでサンプル入力を試したら
小さい値が出てきました。そこでよく読んでいくと誤解していた
ことに気づきました。

コンテスト後にロスタイムで改めて挑戦してみましたがわかりませんでした。

## 解説を見たあと

もし O(10^8) くらい、というところまでわかってもこれだと TLE するから
別解があるはず、って思いそうです。

下記のような関係になるため、O(N{\frac{2}{3}}) となるようです。

`1 <= AAA <= ABB <= ABC <= N`

# D

## 解説を見たあと

# E

## 解説を見たあと