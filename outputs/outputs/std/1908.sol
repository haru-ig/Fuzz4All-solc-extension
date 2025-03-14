pragma solidity ^0.8.0;
contract ArraysMutated4 {
    uint public counter;
    function mutated() public {
        if (counter++; >= 10000){
            revert("Counter Overflow");
        }
    }
    function increment() public {
        counter++;
    }
}
