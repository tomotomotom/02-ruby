def sleep_in(is_weekday, is_vacation)
  if (is_weekday != true) || (is_vacation == true)
    puts true
  else
    puts false
  end
end

# 呼び出し例
sleep_in(false, false)
sleep_in(true, false)   # => false (平日＆休暇でない → 寝坊NG)
sleep_in(false, true)   # => true  (平日でない＆休暇 → 寝坊OK)
sleep_in(true, true)    # => true  (平日＆休暇 → 寝坊OK)