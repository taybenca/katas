# In this exercise you'll be processing log-lines
# Each log line is a string formatted as follows: "[<LEVEL>]: <MESSAGE>".
# There are three different log levels:
# INFO
# WARNING
# ERROR
# You have three tasks, each of which will take a log line and ask you to do something with it.
# 1. Get messagem from a log line
# 2. Get log level from a log line
# 3. Reformat a log line

class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @result = @line.split(":")
    return @result[1].strip
  end

  def log_level
    @result = @line.split(":")
    return @result[0].gsub("[","").gsub("]","").downcase
  end

  def reformat
    result = @line.split(":")
    return result[1].strip + " " + result[0].gsub("[","(").gsub("]",")").downcase
  end
end


LogLineParser.new('[ERROR]: Invalid operation').log_level
puts LogLineParser.new('[INFO]: Operation completed').reformat