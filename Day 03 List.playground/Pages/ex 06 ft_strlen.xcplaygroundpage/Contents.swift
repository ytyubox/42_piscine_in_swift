//: [Previous](@previous)

import Foundation

/*:
Exercise 06 : ft_strlen


Turn-in directory : ex06/

Files to turn in : ft_strlen.c

Allowed functions : Nothing

Remarks : n/a
-  Create a function that counts and returns the number of characters in a string.
-  Here’s how it should be prototyped : int ft_strlen(char *str);
*/

func ft_strlen(_ str:String)->Int
{
	var len = 0
	var index = str.startIndex
	
	while index < str.endIndex{
		len += 1
		index = str.index(after: index)
	}
	return len
}

ft_strlen("abc")
//: [Next](@next)
