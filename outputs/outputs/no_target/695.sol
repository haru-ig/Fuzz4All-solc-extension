pragma solidity ^0.8.0;
contract MutatedExample {
    uint64 private myNumber;
    function example(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
    function getValue() public view returns (uint64) {
        return myNumber;
    }
}
