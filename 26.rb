
def extra_end(str)
  last_two = str.slice(-2,2)
  puts last_two * 3 
end

# 呼び出し例
extra_end('Hello') 
extra_end('Hello') 
extra_end('ab') 
extra_end('Hi')