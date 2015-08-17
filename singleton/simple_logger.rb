class SimpleLogger
  attr_accessor :level
  
  ERROR = 1
  WARNING = 2
  INFO = 3

  def initialize
    @log = File.open 'log.txt', 'w'
    @level = WARNING
  end

  def error(msg)
    log(msg)
  end

  def warning(msg)
    log(msg) if @level >= WARNING
  end

  def info(msg)
    log(msg) if @level >= INFO
  end

  def log(msg)
    @log.puts(msg)
    @log.flush
  end

  @@instance = SimpleLogger.new

  def self.instance
    @@instance
  end

  private_class_method :new
end
