def include_cat_and_dog?(str)
  if str.include?("cat") && str.include?("dog")
    puts "True"
  else
    puts "false"
  end
end

# 呼び出し例
include_cat_and_dog?("catdog") #→ True
include_cat_and_dog?("catcat") #→ False
include_cat_and_dog?("1cat1cadodog") #→ True