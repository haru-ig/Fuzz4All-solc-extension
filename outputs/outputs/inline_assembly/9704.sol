pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
    function subtract(uint x) public pure returns (uint) {
        if(x < 120) {
            return c * 8 + x*c;
        } else {
            return c * x*8 - 8;
        }
    }
    function power(uint x) public pure returns (uint) {
        if(x < 120) {
            return 4*c*c*c*x*c;
        } else if(x < 10 * 10 * 10 *10 *10 *10 *10) {
            return 1000* c*x*c;
        } else {
            return c* x*8    - 8;
        }
    }
}


/* Inline assembly uses the yul language to specify a block of code in Solidity. Using the yul language we can define many statements and we can give the compiler different values to different statements. For example, if we want to increase the value of a counter when a certain condition is met or when a certain event is published in our smart contract, we can use the addition Yul statement.

Yul is designed to have minimal boilerplate, which means that you only need to pay attention to yul in your code. In the above example, we only need to worry about the logic for c. Multiplying the c with the 8 multiplies c by 8. The contractCounter variable uses the multiplication Yul instruction to increase the counter by 8 if the current value is less than or equal to c multiplied by 8. If the contratCounter is greater than c multiplied by 8, the value is subtracted by the multiplied value and converted to type uint. The contractCounter is increased again if the current value is greater than or equal to the mulitply of c by 8 minus 8. Finally,
