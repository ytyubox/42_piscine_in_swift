//: [Previous](@previous)

import Foundation

/*
Exercise 09 : ft_sort_integer_table



Turn-in directory : ex09/

Files to turn in : ft_sort_integer_table.c

Allowed functions : Nothing

Remarks : n/a
-  Create a function which sorts an array (table) of integers by ascending order.
-  The arguments are a pointer to int and the number of ints in the array.
-  Here’s how it should be prototyped :
void ft_sort_integer_table(int *tab, int size);
*/

func ft_sort_integer_table(_ tab:inout [Int], _ size:Int){
	var index = 0
	var storeValue:Int?
	
	while index < size - 1 {
		if tab[index + 1] < tab[index]
		{
			storeValue = tab[index]
			tab[index] = tab[index + 1]
			tab[index + 1] = storeValue!
			index = -1
		}
		index += 1
	}
}

var tab = [0,4,3,2,1,6]
ft_sort_integer_table(&tab, tab.count - 1)


//: [Next](@next)
