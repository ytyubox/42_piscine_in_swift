//: [Previous](@previous)

import Foundation

/*
Exercise 08 : ft_atoi



Turn-in directory : ex08/

Files to turn in : ft_atoi.c

Allowed functions : Nothing

Remarks : n/a
- Reproduce the behavior of the function atoi (man atoi).
- Here’s how it should be prototyped : int ft_atoi(char *str);
*/

func ft_atoi(_ str: String)->Int{
	var result:Int64 = 0
	var sign:Int8 = 1
	var index = str.startIndex
	
	if str[index] == "-"
	{
		sign = -1
	}
	if str[index] == "+" || str[index] == "-"
	{
		index = str.index(after: index)
	}
	
	while index < str.endIndex && UInt8(ascii: UnicodeScalar("\(str[index])")!) < UInt8(ascii: "9") && UInt8(ascii: UnicodeScalar("\(str[index])")!) > UInt8(ascii: "0")
		{
			result = result * 10 + Int64(UInt8(ascii: UnicodeScalar("\(str[index])")!) - UInt8(ascii: "0"))
			index = str.index(after: index)
	}
	return Int(result) * Int(sign)
}

var str = "\(-INT_MAX - 1)"
ft_atoi(str)


//: [Next](@next)
