print "駅数を入力してください："
N = gets.to_i

print "出発駅と到着駅の番号を順番にスペース区切りで入力してください："
stdin = gets.split(" ").map{|d| d.to_i}
a, b = stdin[0], stdin[1]

# 間にある駅の数を調べる
n = (a - b).abs

# シフト演算子を使用して高速演算
# 最後の-1は重複除外
puts (1 << (n - 1)) + (1 << (N - n - 1)) - 1
