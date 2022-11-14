N = 30

def check(num)
    # 配列の添字が各時分秒を、格納されている値が点灯数を示している
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    light[num / 10] + light[num % 10]
end

cnt = 0
24.times do |h|
    60.times do |m|
        60.times do |s|
            cnt += 1 if check(h) + check(m) + check(s) == N
        end
    end
end
puts cnt