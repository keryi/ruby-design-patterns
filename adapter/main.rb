require_relative 'encrypter'
require_relative 'string_io_adapter'

reader = StringIOAdapter.new('Nothing to see here') 
writer = File.open('encrypted_text.txt', 'w')

Encrypter.new('phibetakappa').encrypt(reader, writer)
