//: [Previous](@previous)

import Foundation

/*:
# Exercise 03 : ft_div_mod



Turn-in directory : ex03

Files to turn in : ft_div_mod.c

Allowed functions : Nothing

Remarks : n/a

-  Create a function ft_div_mod prototyped like this : void ft_div_mod(int a, int b, int *div, int *mod);

- This function divides parameters a by b and stores the result in the int pointed by div. It also stores the remainder of the division of a by b in the int pointed by mod.
*/



func ft_div_mod(_ a:Int,_ b :Int,_ div: UnsafeMutablePointer<Int>, _ mod:UnsafeMutablePointer<Int>)
{
	div.pointee = a / b
	mod.pointee = a % b
}

var a = 5, b = 2, c = 0, d = 0
(a,b,c,d)
ft_div_mod(a, b, &c, &d)
(a,b,c,d)

//: [Next](@next)
