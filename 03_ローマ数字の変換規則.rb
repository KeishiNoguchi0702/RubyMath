# ローマ数字は最大3,999まで表現できるため、1から3,999を順にローマ数字に変換し、桁数ごとにカウントしていけばよい
# 10, 100, 1000で割った商と余りを使う変換処理を、共通処理にできるかどうか
# 引き算の表現は各桁が4または9になるときしか存在しないことを見抜けるかどうか

N  = 12

def conv(n, i, v, x)
    result = ""

    if n == 9
        result += i + x
    elsif n == 4
        result += i + v
    else
        result += v * (n / 5)
        result += i * (n % 5)
    end
end

def roman(n)
    m, n = n.divmod(1000)
    c, n = n.divmod(100)
    x, n = n.divmod(10)
    
    result = ""
    result += "M" * m
    result += conv(c, "C", "D", "M")
    result += conv(x, "X", "L", "C")
    result += conv(n, "I", "V", "X")
    result
end

cnt = Hash.new(0)

0.upto(3999) { |n| cnt[roman(n).size] += 1 }
puts cnt[N]
