//: [Previous](@previous)

import Foundation

/**
Exercise 05 : ft_putstr



Turn-in directory : ex05/

Files to turn in : ft_putstr.c

Allowed functions : ft_putchar

Remarks : n/a
- Create a function that displays a string of characters on the standard output.
- Here’s how it should be prototyped : void ft_putstr(char *str);

*/

func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_putstr(_ str:String){
	var index:String.Index?
	
	index = str.startIndex
	while index! < str.endIndex{
		ft_putchar(UInt8(ascii: UnicodeScalar("\(str[index!])")!))
		index = str.index(after: index!)
	}
}


var str = "ABC"

ft_putstr(str)

//: [Next](@next)
