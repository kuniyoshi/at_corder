# 結果

| 問題 | 結果 | 提出時間            | かかった時間 |
|------|------|---------------------|--------------|
| A    | AC   | 2022-01-15 21:04:00 | 4 min        |
| B    | AC   | 2022-01-15 21:09:59 | 10 min       |
| C    | AC   | 2022-01-15 21:18:04 | 8 min        |
| D    | -    | 2022-01-15 23:19:02 | 121 min      |
| E    | -    | -                   |     min      |

# A

## 振り返り

perl なので文字列で数字を 3 つ作って合計しました。

## 解説をみたあと

数式変形がありました。いつもはありそうでないのに。

# B

## 振り返り

最初は for で書けないかなと思っていましたが while になりました。

問題文をよく読めてなかったのもあって時間がかかりました。

## 解説をみたあと

これは、解説のコードと提出コードとが一致したと言っていいと思います。

今と右とが同じ場合のことを考えなかった気がします。

# C

## 振り返り

少し苦戦しました。でも以前の C 問題に比べたら数倍は早いです。

## 解説を見たあと

特にありません。これも解説コードと一致したレベルです。

# D

## 振り返り

コンテスト終了の 40 分後に AC しました。

コンテスト中は視野が狭くなってて、時間切れになった後に
何かに気づく、というのがここ 2 回ほど続いています。
リフレッシュ方法を身につけた方が良さそうです。

コンテスト中は DFS と DP とを行ったり来たりしていました。
DFS で進めていて、しばらくは「ここでやり方を変える時間はない」
と時間を浪費して、でもこの DFS では計算量的に無理となったので
DP に変えましたが「解けないので DFS に工夫が足りないんじゃないか」
と時間を浪費してました。

## 解説を見たあと

最短経路問題で、BFS らしいです。AC したものの、なんか変だなとは
思ってました。解説動画を⏸して書き直します。

---

ちょっとよくなったもののまだ解き方が汚いです。解説動画を再開します。

---

もう一度、書き直しました。BFS はまだ身についてない感じです。

# E

## 解説を見たあと

最小全域木とクラスカルとは手元の本にあるので自力でも解けた
可能性があります。時間をかければ。

解説動画の途中で Union-Find 木だなとは気付きました。

解ける気がするのでクエリが多いというところで⏸して書いてみます。
