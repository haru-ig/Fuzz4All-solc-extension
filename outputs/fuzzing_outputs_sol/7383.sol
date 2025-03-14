pragma solidity ^0.8.0;

contract MutateExample {
    uint8 public value;
    constructor() {
        value = 25;
    }

    function callMutatedExample() public payable {
        value;
    }
}
