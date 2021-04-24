n = gets.split(" ")
motokin = n[0].to_i
kaisuu = n[1].to_i

rireki = 0
kaisuu.times do
    siharai = gets.to_i
    if rireki >= siharai
        rireki -= siharai
        num = []
        num << motokin
        num << rireki.floor
        puts num.join(" ")
    else
        point = siharai * 0.1
        rireki += point
        motokin -= siharai
        num = []
        num << motokin
        num << rireki.floor
        puts num.join(" ")
    end
end
# 1200 5
# 300
# 500
# 300
# 100
# 100