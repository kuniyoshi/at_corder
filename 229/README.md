# 結果

| 問題 | 結果 | 提出時間            | かかった時間 |
|------|------|---------------------|--------------|
| A    | AC   | 2021-11-27 21:07:07 | 7 min        |
| B    | AC   | 2021-11-27 21:25:07 | 18 min       |
| C    | AC   | 2021-11-27 21:34:55 | 10 min       |
| D    | -    | -                   |     min      |
| E    | -    | -                   |     min      |

# A

## 振り返り

if を 4 つ書きました。もう少し単純に書きたかったです。

## 解説をみたあと

2 つの if が不要でした。No だけみた方が単純ですね。

# B

## 振り返り

ペナルティ x 4

Easy を Earsy にタイポして WA x 2, List::Util::zip が
入ってなくて RE x 2 です。

最初 WA したときに、桁が揃っていないといけないのかって
思って桁を合わせるようにしてしまいました。これでも WA
するのでなんでだろうとよくみたらタイポしていました。

せっかく桁を合わせたので zip でコードを単純にしたら
RE で、じゃあ mesh と変えてみても RE でした。
しょうがないのでどちらも使わないようにしました。
List::Util はコアモジュールなのでちゃんと入ってて欲しいです。

途中で桁合わせ要らないなって思いました。コンテスト後に
最初のバージョンのタイポを直して提出したら AC してました。

失敗ケース作らないで偶発的プログラミングしてしまったので
余計なペナルティもらっちゃいましたね。

## 解説をみたあと

数字のままやるとちょっと面倒ですね。perl だとすぐ文字と数字とを
行き来しちゃいます。

# C

## 振り返り

貪欲法です。

今回は簡単そうなので D もいけるかと思って考えてましたが
最後まで何もわかりませんでした。

## 解説を見たあと

同じ感じでした :)

# D

## 解説を見たあと

# E

## 解説を見たあと