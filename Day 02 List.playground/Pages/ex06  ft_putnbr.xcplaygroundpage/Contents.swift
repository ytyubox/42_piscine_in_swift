//: [Previous](@previous)

import Foundation

/*:

Exercise 06 : ft_putnbr

Turn-in directory : ex06/

Files to turn in : ft_putnbr.c

Allowed functions : ft_putchar

Remarks : n/a
-  Create a function that displays the number entered as a parameter. The function has to be able to display all possible values within an int type variable.
-  Here’s how it should be prototyped : void ft_putnbr(int nb);
- For example:
> ft_putnbr(42) displays "42".
*/
func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_putnbr(_ nb:Int)
{
	let Uint0 = uint8(ascii: "0")
	var nbr:Int64 = Int64(nb)
	if nbr < 0
	{
		ft_putchar(UInt8(ascii: "-"))
		nbr *= -1
	}
	if nbr > 10
	{
		ft_putnbr(Int(nbr / 10))
	}
	ft_putchar(Uint0 + UInt8(nbr % 10))
}

ft_putnbr(Int(INT_MAX))
ft_putchar(UInt8(ascii: "\n"))
ft_putnbr(-2147483648)
//: [Next](@next)
