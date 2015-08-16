class Encrypter
  def initialize(key)
    @key = key
  end

  def encrypt(reader, writer)
    key_index = 0
    while not reader.eof?
      encrypted_char = (reader.getc.ord ^ @key[key_index].ord).chr
      key_index = (key_index + 1) % @key.size
      writer.putc encrypted_char
    end
  end
end
