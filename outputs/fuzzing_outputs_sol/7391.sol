pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public immutable num;
    constructor() {
        num = 1;
    }
    function callOriginal1() public pure {
        num;
    }
    function receiveMutated1(uint8 z) public {
        num = z;
    }
}
