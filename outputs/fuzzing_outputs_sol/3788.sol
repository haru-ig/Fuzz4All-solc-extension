pragma solidity ^0.8.0;
contract MutateExample {
    function mutated(uint256 input) public {
        require (Example17(_check(input)).example17(input) >= 0);
    }
}
