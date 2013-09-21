#------------------------------------------------------------------------------#
# A simple module to display variable information 
# require_relative 'lib/var => Var.info("test", test)
require 'time'
module Log



  #----------------------------------------------------------------------------#
  def FileIO.fileExists(filename, exit)
    #
    filetest = File.exist?(filename)
    if filetest == false
      if exit == 0
        puts "Error".ljust(10) + ": File not found! -> #{filename}"
      else
        error = "File not found!"
        location = "def FileIO.fileExists(#{filename}, #{exit})"
        FileIO.errorAndExit(error, location)
      end
    else
      filetest = true
    end
    return filetest
  end

  def Log.ts(filename, message)



    ts = Time.now.utc.iso8601
    puts "-> #{ts}"    
  end


end