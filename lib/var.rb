module Var
  #
  #
  #----------------------------------------------------------------------------#
  def Var.Info(name, variable)
    column = 10
    puts "variable".ljust(column) + ": #{name}"
    puts "class".ljust(column) + ": #{variable.class}"

    case variable
    when Array
      puts "length".ljust(column) + ": #{variable.length}"
      print "elements".ljust(column) + ": "
      variable.each {|e| print "#{e} "}
      puts ""

    when Hash
      puts "length".ljust(column) + ": #{variable.length}"
      tmpArray = variable.keys
      block = 0
      tmpArray.each {|e| if block < e.length.to_i; block = e.length.to_i; end}
      tmpArray.each_with_index do |e,i|
        if i == 0
          print "elements".ljust(column) + ": "
          print "#{e}".ljust(block+1) + "=> #{variable[e]}"; puts ""
        else
          print "".ljust(column+2)
          print "#{e}".ljust(block+1) + "=> #{variable[e]}"; puts ""        
        end
      end

    else
      puts "inspect".ljust(column) + ": #{variable.inspect}"

    end
    puts ""
  end
end