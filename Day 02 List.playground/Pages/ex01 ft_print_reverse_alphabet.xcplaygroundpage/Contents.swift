import Cocoa

/*:
# Exercise 01 : ft_print_reverse_alphabet

Turn-in directory : ex01/

Files to turn in : ft_print_reverse_alphabet.c

Allowed functions : ft_putchar

Remarks : n/a
-  Create a function that displays the alphabet in lowercase, on a single line, by descending order, starting from the letter ’z’.
-  Here’s how it should be prototyped : void ft_print_reverse_alphabet(void);

*/
func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_print_reverse_alphabet()
{
	let endChar = UInt8(ascii: "a")
	var char = UInt8(ascii: "z")
	
	while  char != endChar - 1
	{
		ft_putchar(char)
		char -= 1
	}
}

ft_print_reverse_alphabet()
