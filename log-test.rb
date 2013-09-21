require_relative 'lib/var'
require_relative 'lib/fileio'

@logfile = "#{__FILE__}".gsub(".rb", ".log")
puts "#{@logfile}"

message = "log this ..."


FileIO.log(@logfile, message)
