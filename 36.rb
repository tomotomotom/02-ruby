def withdraw(balance, amount)
  fee = 110  # 手数料

  if amount + fee > balance
    puts "残高不足です"
  else
    balance -= (amount + fee)
    puts "#{amount}円引き落としました。残高は#{balance}円です"
  end
end

balance = 100000  # 残高
puts "いくら引き落としますか？（手数料110円かかります）"
money = gets.to_i
withdraw(balance, money)
