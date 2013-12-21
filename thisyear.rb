
THE_LAST_DAY = Time.mktime(2013, 12, 31, 23, 59, 59)
MONTH_OF_YEAR = 12
HOUR_OF_DAY = 24
MIN_SEC_OF_HOUR = 60
MONTH_31 = [1, 3, 5, 7, 8, 10, 12]
MONTH_30 = [4, 6, 9, 11]
$month, $day, $hour, $minute, $second = 0

def count(now)
    $month = THE_LAST_DAY.month - now.month
    $day = 0
    for i in (now.month+1)..THE_LAST_DAY.month
        if MONTH_31.include?(i)
            $day += 31
        elsif MONTH_30.include?(i)
            $day += 30
        else
            $day += 28
        end
    end
    if MONTH_31.include?(now.month)
        $day += (31 - now.day)
    elsif MONTH_30.include?(now.month)
        $day += (30 - now.day)
    else
        $day += (28 - now.day)
    end
    $hour = $day * HOUR_OF_DAY + (HOUR_OF_DAY - 1 - now.hour)
    $minute = $hour * MIN_SEC_OF_HOUR + (MIN_SEC_OF_HOUR - 1 - now.min)
    $second = $minute * MIN_SEC_OF_HOUR + (MIN_SEC_OF_HOUR - now.sec)
end

def show
    puts "今は　#{$myTime.year}年　#{$myTime.month}月　#{$myTime.day}日　#{$myTime.hour}時　#{$myTime.min}分　#{$myTime.sec}秒　です。"
    puts "今年は後　#{$month}月　です。"
    puts "今年は後　#{$day}日　です。"
    puts "今年は後　#{$hour}時　です。"
    puts "今年は後　#{$minute}分　です。"
    puts "今年は後　#{$second}秒　です。"
end

def error
    puts "今年は #{$myTime.year}年　ではなくて、２０１３年です。"
end

if ARGV[0]
    inputTime = ARGV[0].split(/-/)
    $myTime = Time.mktime(inputTime[0].to_i, inputTime[1].to_i, inputTime[2].to_i, 0, 0, 0)
else
    $myTime = Time.now
end

if $myTime.year != 2013
    error
else
    count($myTime)
    show
end
