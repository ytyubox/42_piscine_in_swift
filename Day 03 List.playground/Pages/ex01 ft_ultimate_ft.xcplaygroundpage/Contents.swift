//: [Previous](@previous)

import Foundation
/*:
#  Exercise 01 : ft_ultimate_ft



 Turn-in directory : ex01/

 Files to turn in : ft_ultimate_ft.c

 Allowed functions : Nothing

 Remarks : n/a
 - Create a function that takes a pointer to pointer to pointer to pointer to pointer to pointer to pointer to pointer to pointer to int as a parameter and sets the value "42" to that int.
 - Here’s how it should be prototyped : void ft_ultimate_ft(int *********nbr);
*/
var nbr1 = 0

func ft_ultimate_ft(_ nbr:
	UnsafeMutablePointer
		<UnsafeMutablePointer
			<UnsafeMutablePointer
				<UnsafeMutablePointer
					<UnsafeMutablePointer
						<UnsafeMutablePointer
							<UnsafeMutablePointer
								<UnsafeMutablePointer
									<UnsafeMutablePointer
										<Int
										>
									>
								>
							>
						>
					>
				>
			>
		>
	)
{
	nbr.pointee.pointee.pointee.pointee.pointee.pointee.pointee.pointee.pointee  = 42
}

var ptr1 = withUnsafeMutablePointer(to: &nbr1) {return $0}
var ptr2 = withUnsafeMutablePointer(to: &ptr1) {return $0}
var ptr3 = withUnsafeMutablePointer(to: &ptr2) {return $0}
var ptr4 = withUnsafeMutablePointer(to: &ptr3) {return $0}
var ptr5 = withUnsafeMutablePointer(to: &ptr4) {return $0}
var ptr6 = withUnsafeMutablePointer(to: &ptr5) {return $0}
var ptr7 = withUnsafeMutablePointer(to: &ptr6) {return $0}
var ptr8 = withUnsafeMutablePointer(to: &ptr7) {return $0}
var ptr9 = withUnsafeMutablePointer(to: &ptr8) {return $0}
nbr1
ft_ultimate_ft(ptr9)
nbr1

//: [Next](@next)
