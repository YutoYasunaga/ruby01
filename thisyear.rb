
def count(now)
    the_last_time = Time.mktime(2013, 12, 31, 23, 59, 59)
    hour_of_day = 24
    min_sec_of_hour = 60

    month = 12 - now.month

    day = 0
    for i in now.month+1..12
        case
        when 1, 3, 5, 7, 8, 10, 12
            day = day + 31
        when 4, 6, 9, 11
            day = day + 30
        when 2
            day = day + 28
        end
    end
    case now.month
    when 1, 3, 5, 7, 8, 10, 12
        day = day + 31 - now.day
    when 4, 6, 9, 11
        day = day + 30 - now.day
    when 2
        day = day + 28 - now.day
    end
    
    hour = day * hour_of_day + (hour_of_day - now.hour)
    minute = hour * min_sec_of_hour + (min_sec_of_hour - now.min)
    second = minute * min_sec_of_hour + (min_sec_of_hour - now.sec)
    
    puts "今は　#{now.year}年　#{now.month}月　#{now.day}日　#{now.hour}時　#{now.min}分　#{now.sec}秒　です。"
    puts "今年は後　#{month}月です。"
    puts "今年は後　#{day}日です。"
    puts "今年は後　#{hour}時です。"
    puts "今年は後　#{minute}分です。"
    puts "今年は後　#{second}秒です。"
end

if ARGV[0] && ARGV[1] && ARGV[2] && ARGV[3] && ARGV[4] && ARGV[5]
    myTime = Time.mktime(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i, ARGV[3].to_i, ARGV[4].to_i, ARGV[5].to_i)
else
    myTime = Time.now
end
count(myTime)
