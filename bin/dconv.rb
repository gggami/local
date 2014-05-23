require 'optparse'
require 'time'
require 'date'

def usage
    puts "#{$0} -d(from Datetime)] -m(from unixtime by Milliseconds) [-s(Seconds mode)] %Y%m%d-%H%M%S|unittime"
end

if ARGV.length == 0
    usage
    exit
end

params = ARGV.getopts("dms")
by_sec = params['s']
val = ARGV[0]

if params['m'] then
    v = val.to_i
    if !by_sec then
       v /= 1000
    end 
    puts Time.at(v).strftime("%Y-%m-%d %H:%M:%S")
elsif params['d']
    #result = Time.parse(val).to_i
    result = Date.strptime(val, "%Y%m%d-%H%M%S").to_time.to_i
    if !by_sec then
        result *= 1000
    end
    puts result
end

