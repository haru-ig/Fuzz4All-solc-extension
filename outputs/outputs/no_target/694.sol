pragma solidity ^0.8.0;

contract MutatedExample {
    uint64 private myNumber;
    function example(uint64 _testNumber) public {
        uint64 testValue;
        testValue = _testNumber;
        myNumber = testValue;
    }
    function getValue() public view returns (uint64) {
        return myNumber;
    }
}
