pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutated() public returns (uint) {
        emit Log("Original function called.");
        return 0;
    }
}
