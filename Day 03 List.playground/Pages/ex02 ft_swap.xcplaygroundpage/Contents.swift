//: [Previous](@previous)

import Foundation

//: Exercise 02 : ft_swap

//:
//:
//: Turn-in directory : ex02/
//: Files to turn in : ft_swap.c
//: Allowed functions : Nothing
//: Remarks : n/a
//: • Create a function that swaps the value of two integers whose addresses are entered as parameters.
//: • Here’s how it should be prototyped : void ft_swap(int *a, int *b);

func ft_swap(_ a:inout Int, _ b:inout Int)
{
	a ^= b
	b ^= a
	a ^= b
}

var a = 0, b = 1
(a,b)
ft_swap(&a, &b)
(a,b)

//: [Next](@next)
