def xyz_there(str)
  # ".xyz" を含んでいる場合は除外し、それ以外の "xyz" があるかチェック
  if str.include?("xyz") && !str.include?(".xyz")
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
xyz_there('abcxyz')    # → True
xyz_there('abc.xyz')   # → False
xyz_there('xyz.abc')   # → True
xyz_there('azbycx')    # → False
xyz_there('a.zbycx')   # → False