//: [Previous](@previous)

import Foundation

/*:
# Exercise 04 : ft_print_comb

Turn-in directory : ex04/

Files to turn in : ft_print_comb.c

Allowed functions : ft_putchar

Remarks : n/a

-  Create a function that displays all di
-  Here’s the intended output :
````
$>./a.out | cat -e
012, 013, 014, 015, 016, 017, 018, 019, 023, ..., 789$>
````

-  987 isn’t there because 789 already is.
-  999 isn’t there because the digit 9 is present more than once.
-  Here’s how it should be prototyped : void ft_print_comb(void);
*/
func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	
	write(1, char, 1)
}

func ft_print_comb()
{
	let Uint0 = uint8(ascii: "0")
	var numberTuple = (d1:-1,d2:0,d3:0)
	
	while numberTuple.d1 != 8
	{
		numberTuple.d1 += 1
		numberTuple.d2 = numberTuple.d1
		while numberTuple.d2 != 9 {
			numberTuple.d2 += 1
			numberTuple.d3 = numberTuple.d2
			while numberTuple.d3 != 9 {
				numberTuple.d3 += 1
				ft_putchar(Uint0 + UInt8(numberTuple.d1))
				ft_putchar(Uint0 + UInt8(numberTuple.d2))
				ft_putchar(Uint0 + UInt8(numberTuple.d3))
				if numberTuple.d1 != 7
				{
					ft_putchar(uint8(ascii: ","))
					ft_putchar(uint8(ascii: " "))
				}
			}
		}
	}
}
ft_print_comb()
//: [Next](@next)
