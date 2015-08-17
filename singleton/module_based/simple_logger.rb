module SimpleLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  @@log = File.open 'log.txt', 'w'
  @@level = WARNING

  class << self
    def warning(msg)
      log(msg) if @@level >= WARNING
    end

    def log(msg)
      @@log.puts msg
      @@log.flush
    end
  end
end
