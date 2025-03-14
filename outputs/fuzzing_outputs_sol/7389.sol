pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public value;
    constructor() {
        value = 25;
    }
    function mutateExample() payable {
        value += 5;
    }
    function getExample() public view returns (uint8) {
        return value;
    }
}
