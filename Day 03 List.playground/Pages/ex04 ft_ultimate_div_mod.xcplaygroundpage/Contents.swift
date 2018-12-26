//: [Previous](@previous)

import Foundation

/*:
Exercise 04 : ft_ultimate_div_mod



Turn-in directory : ex04/

Files to turn in : ft_ultimate_div_mod.c

Allowed functions : Nothing

Remarks : n/a
- Create a function ft_ultimate_div_mod with the following prototype : void ft_ultimate_div_mod(int *a, int *b);
- This function divides parameters a by b. The result of this division is stored in the int pointed by a. The remainder of the division is stored in the int pointed by b.
*/

func ft_ultimate_div_mod(_ a: UnsafeMutablePointer<Int>, _ b:UnsafeMutablePointer<Int>)
{
	var div:Int?
	
	div = a.pointee / b.pointee
	b.pointee = a.pointee % b.pointee
	a.pointee = div!
	
}
var a = 5, b = 3
(a,b)
ft_ultimate_div_mod(&a, &b)
(a,b)

//: [Next](@next)
