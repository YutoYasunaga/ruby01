
time1 = Time.now
time2 = Time.mktime(2013, 12, 31, 23, 59, 59)

nichi = 31;
jikan = 24;
fun_byou = 60;
month=time2.month-time1.month
day=month*nichi+(nichi-time1.day)
hour=day*jikan+(jikan-time1.hour)
minute=hour*fun_byou+(fun_byou-time1.min)
second=minute*fun_byou+(fun_byou-time1.sec)

puts "今は　#{time1.year}年　#{time1.month}月　#{time1.day}日　｜　#{time1.hour}時　#{time1.min}分　#{time1.sec}秒"

puts "-----------"
puts "今年は後："
puts "#{month}月"
puts "#{day}日"
puts "#{hour}時"
puts "#{minute}分"
puts "#{second}秒"
