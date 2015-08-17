class SimpleLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  @@log = File.open 'log.txt', 'w'
  @@level = WARNING

  class << self
    def level=(new_level)
      @level = new_level
    end

    def level
      @level
    end

    def info(msg)
      log(msg) if @@level >= INFO
    end

    def warning(msg)
      log(msg) if @@level >= WARNING
    end

    def error(msg)
      log(msg)
    end

    def log(msg)
      @@log.puts(msg)
      @@log.flush
    end
  end
end
