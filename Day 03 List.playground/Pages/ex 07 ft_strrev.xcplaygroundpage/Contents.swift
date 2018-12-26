//: [Previous](@previous)

import Foundation

/*:

# Exercise 07 : ft_strrev


Turn-in directory : ex07/

Files to turn in : ft_strrev.c

Allowed functions : Nothing

Remarks : n/a
- Create a function that reverses the order of characters in a string.
- It has to return str.
- Here’s how it should be prototyped : char *ft_strrev(char *str);
- Example:
> a => a
> ab => ba
> abcde => edcba

*/

func ft_strrev(_ str:inout String)
{
	var frontIndex = str.startIndex
	var backIndex = str.index(before: str.endIndex)
	var storedValue:String
	
	while frontIndex < backIndex{
		storedValue = String(str[frontIndex])
		str.replaceSubrange(frontIndex...frontIndex, with: String(str[backIndex]))
		str.replaceSubrange(backIndex...backIndex, with: storedValue)
		frontIndex = str.index(after: frontIndex)
		backIndex = str.index(before: backIndex)
	}
}
var str = "123456"
ft_strrev(&str)
str
//: [Next](@next)
