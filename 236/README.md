# 結果

| 問題 | 結果 | 提出時間            | かかった時間 |
|------|------|---------------------|--------------|
| A    | AC   | 2022-01-23 21:05:34 | 6 min        |
| B    | AC   | 2022-01-23 21:08:34 | 3 min        |
| C    | AC   | 2022-01-23 21:13:50 | 6 min        |
| D    | -    | -                   |     min      |
| E    | -    | -                   |     min      |

# A

## 振り返り

サンプル入力が壊れてて時間かかりました。前もありましたね。

## 解説をみたあと

特にありません。

# B

## 振り返り

特にありません。

計算量は O(N) でしょうか。文字列比較が O(1) じゃなければ
O(N^2) と思います。

## 解説をみたあと

xor で解けるらしいです。
面白いですね。

# C

## 振り返り

身構えていましたが特に問題ありませんでした。

## 解説を見たあと

特にありません。

# D

## 振り返り

↓ コンテスト中に考えていたことです。

---

全組み合わせは 16! 通り -> 全探索できない
xor -> 前の最大値が次の最大値の前提じゃない -> DP でもない

xor の性質を見つめる？
可換

可換なので組み合わせは 16! よりだいぶ少なくなる
全探索できるはず。

何かビット全探索できないのか

4 M 通りくらいのよう

2^22 よりは多い

ビットは違いそう

全探索はできない

## 解説を見たあと

# E

## 解説を見たあと
