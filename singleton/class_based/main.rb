require_relative 'simple_logger'

SimpleLogger::level = SimpleLogger::WARNING
SimpleLogger.warning 'This is a warning message'
