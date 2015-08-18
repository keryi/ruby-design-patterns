require_relative 'parser'

parser = Parser.new "and (and(bigger 1024)(filename *.mp3)) writable"
ast = parser.expression
puts ast
