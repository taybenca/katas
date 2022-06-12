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
    level, line = line.split(":")
    @level = level.gsub(/\[|\]/, "").downcase
    @line = line.strip
  end

  def message
    @line
  end

  def log_level
    @level
  end

  def reformat
    "#{@line} (#{@level})"
  end
end


LogLineParser.new('[ERROR]: Invalid operation').log_level
puts LogLineParser.new('[INFO]: Operation completed').reformat