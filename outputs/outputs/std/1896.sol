pragma solidity ^0.8.0;
contract ArraysMutatedModify {
    Array.sol.uint public counter;
    Array.sol.uint public newCounter;
    function incrementWithReturn() public returns (Array.sol.uint) {
        counter += 2;
        return newCounter;
    }
    function increment() public {
        counter += 2;
        newCounter = newCounter + 1;
    }
    function decrement() public {
        counter -= 2;
        newCounter = newCounter - 1;
    }
}
