//: [Previous](@previous)

import Foundation

//:Exercise 00 : ft_ft

//:
//:
//:Turn-in directory : ex00/
//:Files to turn in : ft_ft.c
//:Allowed functions : Nothing
//:Remarks : n/a
//:• Create a function that takes a pointer to int as a parameter, and sets the value "42" to that int.
//:• Here’s how it should be prototyped : void ft_ft(int *nbr);

func ft_ft(_ nbr: inout Int)
{
	nbr = 42
}

var a = 0
ft_ft(&a)
a

//: [Next](@next)
