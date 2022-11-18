N = 45

def count(n)
    coin = [10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]
    result = 0
    coin.each do |c|
        cnt, n = n.divmod(c)
        result += cnt
    end
    result
end

row = [0] * (N+1)
row[0] = 1 #パスカル三角形の1つ目の要素は必ず1になる

N.times do |i| #行数だけ繰り返す
    (i + 1).downto(1) do |j|
        row[j] += row[j-1] 
    end
end

puts row.map{|i| count(i)}.inject(:+) #inject(:+)は合計値を算出する