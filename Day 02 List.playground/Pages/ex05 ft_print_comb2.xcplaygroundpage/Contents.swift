//: [Previous](@previous)

import Foundation

/*:
# Exercise 05 : ft_print_comb2

Turn-in directory : ex05/

Files to turn in : ft_print_comb2.c

Allowed functions : ft_putchar

Remarks : n/a
- Create a function that displays all di
- Here’s the expected output :
- Here’s how it should be prototyped : void ft_print_comb2(void);
````
$>./a.out | cat -e
00 01, 00 02, 00 03, 00 04, 00 05, ..., 00 99, 01 02, ..., 97 99, 98 99$>
````
*/
func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_print_comb2()
{
	let Uint0 = uint8(ascii: "0")
	var nbr2Tuple = (d1:-1,d2:0)
	
	while nbr2Tuple.d1 != 98
	{
		nbr2Tuple.d1 += 1
		nbr2Tuple.d2 = nbr2Tuple.d1
		while nbr2Tuple.d2 != 99
		{
			nbr2Tuple.d2 += 1
			ft_putchar(Uint0 + UInt8(nbr2Tuple.d1 / 10))
			ft_putchar(Uint0 + UInt8(nbr2Tuple.d1 % 10))
			ft_putchar(uint8(ascii: " "))
			ft_putchar(Uint0 + UInt8(nbr2Tuple.d2 / 10))
			ft_putchar(Uint0 + UInt8(nbr2Tuple.d2 % 10))
			if nbr2Tuple.d1 != 98
			{
				ft_putchar(uint8(ascii: ","))
				ft_putchar(uint8(ascii: " "))
			}
		}
	}
}

ft_print_comb2()
//: [Next](@next)
