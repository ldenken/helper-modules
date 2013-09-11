require_relative 'lib/var'

test = "test string"
Var.Info("test", test)

test = ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dogs", "back"]
Var.Info("test", test)

test = { "one" => "hash", "two" => "hash", "three" => "hash" }
Var.Info("test", test)
