def sum_number(n, m)
  total = 0 # 総和を代入する変数を、初期値0で定義しておく
  while n <= m   # n<=mの条件を満たす間、処理を繰り返す
    total = total + n # 変数totalに変数nを足す
    n = n + 1
  end
  puts total
end

# 呼び出し例
sum_number(5,15)
sum_number(1,10)
sum_number(1,3) #→ 6 ＜計算内容：1+2+3＞
sum_number(1,10) #→ 55 ＜計算内容：1+2+3+4…+10＞
sum_number(5,15) #→ 110 ＜計算内容5+6+7+8…+15＞