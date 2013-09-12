### Helper modules

A collection of ruby helper modules that are commonly used in development
and projects.

#### var.rb
A simple module to display variable information 

```
require_relative 'lib/var'
test = "test string"
Var.Info("test", test)
```

=>

```
variable  : test
class     : String
inspect   : "test string"
```

#### colour.rb
A simple class to colourise standard output text 

```
require_relative 'lib/colour
puts "My text is bold".bold
```
=>
**```
My text is bold
```**




