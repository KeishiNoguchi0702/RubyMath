print "多数決する人数を入力してください："
N = gets.to_i

cnt = 0
0.upto(N) do |rock|
    0.upto(N - rock) do |scissors|
        paper = N - rock - scissors
        all = [rock, scissors, paper]
        cnt += 1 if all.count(all.max) == 1
    end
end

puts cnt