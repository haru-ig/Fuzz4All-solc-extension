pragma solidity ^0.8.0;
contract Mutated1 is Mutated2 {
    function foo() public {
       x = 3;
    }
}
