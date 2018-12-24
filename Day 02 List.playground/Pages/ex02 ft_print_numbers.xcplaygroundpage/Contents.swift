//: [Previous](@previous)

import Foundation

/*:

# Exercise 02 : ft_print_numbers

Turn-in directory : ex02/

Files to turn in : ft_print_numbers.c

Allowed functions : ft_putchar

Remarks : n/a
- Create a function that displays all digits, on a single line, by ascending order.
- Here’s how it should be prototyped : void ft_print_numbers(void);
*/

func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_print_numbers()
{
	
	var char = UInt8(ascii: "0")
	let endChar = UInt8(ascii: "9")
	
	while  char != endChar + 1
	{
		ft_putchar(char)
		char += 1
	}
}

ft_print_numbers()

//: [Next](@next)
