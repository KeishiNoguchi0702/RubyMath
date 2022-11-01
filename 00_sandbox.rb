arr = []
0.upto(100) do |rock|
    0.upto(100 - rock) do |scissors|
        paper = 100 - rock - scissors
        arr << [rock, scissors, paper]
    end
end

cnt = 0
arr.each do |ele|
    cnt += 1 if ele.count(ele.max) == 1
end

p cnt