now = Time.now
the_last_day = Time.mktime(2013, 12, 31, 23, 59, 59)
hour_of_day = 24
min_sec_of_hour = 60

puts "今は　#{now.year}年　#{now.month}月　#{now.day}日　#{now.hour}時　#{now.min}分　#{now.sec}秒　です。"
month = the_last_day.month - now.month

day = 0
for i in now.month+1..12
    case i
    when 1, 3, 5, 7, 8, 10, 12
        day = day + 31
    when 4, 6, 9, 11
        day = day + 30
    when 2
        day = day + 28
    end
end
day = day + (the_last_day.day - now.day)

hour = day * hour_of_day + (hour_of_day - now.hour)
minute = hour * min_sec_of_hour + (min_sec_of_hour - now.min)
second = minute * min_sec_of_hour + (min_sec_of_hour - now.sec)

puts "今年は後　#{month}月　です。"
puts "今年は後　#{day}日　です。"
puts "今年は後　#{hour}時　です。"
puts "今年は後　#{minute}分　です。"
puts "今年は後　#{second}秒　です。"
