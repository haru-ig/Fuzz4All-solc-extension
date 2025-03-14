pragma solidity ^0.8.0;
contract ArraysMutated {
    uint public counter;
    uint public newCounter;
    function incrementWithReturn() public returns (uint) {
        counter += 2;
        newCounter = 3;
        return newCounter;
    }
    function increment() public {
        counter += 2;
        newCounter = 3 + newCounter;
    }
    function decrement() public {
        counter -= 2;
        newCounter = 3 - newCounter;
    }
}
