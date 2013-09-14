require_relative 'lib/var'
require_relative 'lib/fileio'


tmpArrays = []
3.times do 
  tmpArray = []
  tmpArray << rand(1..9)
  tmpArray << rand(20..40)
  tmpArray << rand(1..5)
  tmpArrays << tmpArray
end
Var.Info("tmpArrays", tmpArrays)

delimiter = ","
filename = "testfile.ary"
flag = "w"
FileIO.arrayToFile(tmpArrays, delimiter, filename, flag)

filename = "testfile.ary"
delimiter = ","
fileArray = FileIO.fileToArray(filename, delimiter)
Var.Info("fileArray", fileArray)



tmpHash = {}
3.times do 
  tmpArray = []
  tmpArray << "abc"
  tmpArray << rand(20..40)
  tmpArray << rand(1..5)
  tmpHash["#{rand(100..999)}"] = tmpArray
end
Var.Info("tmpHash", tmpHash)

delimiter = ","
filename = "testfile.hsh"
flag = "w"
FileIO.hashToFile(tmpHash, delimiter, filename, flag)

delimiter = ","
filename = "testfile.hsh"
fileHash = FileIO.fileToHash(filename, delimiter)
Var.Info("fileHash", fileHash)



