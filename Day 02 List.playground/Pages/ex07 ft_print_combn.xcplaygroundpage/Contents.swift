//: [Previous](@previous)

import Foundation
/*:
Exercise 07 : ft_print_combn

Turn-in directory : ex07/

Files to turn in : ft_print_combn.c

Allowed functions : ft_putchar

Remarks : n/a
- Create a function that displays all di
- n will be so that: 0<n<10.
- If n = 2, here’s the expected output :
````
$>./a.out | cat -e
01, 02, 03, ..., 09, 12, ..., 79, 89$>
````
- Here’s how it should be prototyped : void ft_print_combn(int n);
*/
func ft_putchar(_ c:UInt8){
	let char = String(bytes: [c], encoding: .utf8)!
	write(1, char, 1)
}

func ft_print_combn(_ n:Int)
{
	let uint0 = UInt8(ascii: "0")
	var digitArray = [1,0,0,0,0,0,0,0,0]
	var index = 0
	
	while (n > 1) && (index < 9)
	{
		digitArray[index] = (index < n) ? index : -1;
		index += 1
	}
	while (true)
	{
		index = 0
		while index < n
		{
			ft_putchar(uint0 + uint8(digitArray[index]))
			index += 1
		}
		if digitArray[0] < 10 - n
		{
			ft_putchar(UInt8(ascii: ","))
			ft_putchar(UInt8(ascii: " "))
		}
		else
		{
			return
		}
		digitArray[n - 1] += 1
		index = n - 1
		while (digitArray[n - 1] == 10) && (index > -1)
		{
			if (digitArray [index] < 10 - n + index)
			{
				digitArray[index] += 1;
				while (index < n - 1)
				{
					digitArray[index + 1] = digitArray[index] + 1;
					index += 1;
				}
				break;
			}
			index -= 1
		}
	}
}
ft_print_combn(1)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(2)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(3)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(4)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(5)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(6)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(7)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(8)
ft_putchar(uint8(ascii: "\n"))
ft_putchar(uint8(ascii: "\n"))
ft_print_combn(9)


//: [Next](@next)
