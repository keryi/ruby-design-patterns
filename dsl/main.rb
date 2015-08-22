require_relative 'backup'
require_relative 'packrat'

def file_name(ext)
  Dir.glob(ext)
end

eval(File.read('backup.pr'))
PackRat.instance.run
