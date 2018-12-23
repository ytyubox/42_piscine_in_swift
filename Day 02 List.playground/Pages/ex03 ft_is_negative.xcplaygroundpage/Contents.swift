//: [Previous](@previous)

import Foundation

/*:
# Exercise 03: ft_is_negative

Turn-in directory : ex03/

Files to turn in : ft_is_negative.c

Allowed functions : ft_putchar

Remarks : n/a
-  Create a function that displays ’N’ or ’P’ depending on the integer’s sign entered as a parameter. If n is negative, display ’N’. If n is positive or null, display ’P’.
-  Here’s how it should be prototyped : void ft_is_negative(int n);
*/


func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	
	write(1, char, 1)
}
func ft_is_negative(_ n:Int)
{
	let char = n < 0 ? UInt8(ascii: "N"): UInt8(ascii: "P")
	
	ft_putchar(char)
}

ft_is_negative(0)
//: [Next](@next)
