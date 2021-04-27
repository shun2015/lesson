n = gets.split(" ")
motokin = n[0].to_i
kaisuu = n[1].to_i
# to_iは文字列を整数に変換し小数点を切り捨てる

point = 0
kaisuu.times do
    siharai = gets.to_i
    if point >= siharai
        point -= siharai
        num = []
        num << motokin
        num << point.floor
        # floorは小数点以下を小さい方の整数へ変換する(1.2は1.0 , -1.2は-2.0 , 5.8は5.0 , -5.8は-6.0)
        puts num.join(" ")
        # join()は配列の要素を文字列にし連結する
    else
        point = siharai * 0.1
        point += point
        motokin -= siharai
        num = []
        num << motokin
        num << point.floor
        puts num.join(" ")
    end
end
# 1200 5
# 300
# 500
# 300
# 100
# 100