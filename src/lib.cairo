// relative files directory
mod arithmetic_operations;
mod even_or_odd_checker;
mod basic_logic_functions;
    
// importing all files and folders to be used
use crate::arithmetic_operations::subtract;
use crate::basic_logic_functions::max_num;
use crate::even_or_odd_checker::even_or_odd_sum;

fn main() {
    // INITIALIZING AND ASSIGNING VARIABLES TO THE FUNCTIONS
    let sub = subtract(3, 5);
    let multiply = arithmetic_operations::multiplication(5, 6);
    let div = arithmetic_operations::division(20, 0);
    let max_number = max_num(2, 4);
    let checker = basic_logic_functions::sign_checker(6);
    let odd = even_or_odd_checker::is_odd(9);
    let sum_check = even_or_odd_sum::even_odd_sum(3, 7);

    //*********** PRINTING TO CONSOLE ************
    println!("the result of subtraction is {}", sub);
    println!("the result of multiplication is {}", multiply);

    // use match "function name" to implement the error handling function 
    match div {
        Option::Some(value) => println!("the result is {}", value),
        Option::None => println!("Error: cannot divide by 0"),
    }
    println!("the max number is {}", max_number);
    println!("the number is {}", checker);
    println!("is_odd is {}", odd);
    println!("the sum is {}", sum_check);
}

