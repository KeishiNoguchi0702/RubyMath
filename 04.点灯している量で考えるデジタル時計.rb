N = 30

def check(n)
    light = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]
    light[n / 10] + light[n % 10]
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