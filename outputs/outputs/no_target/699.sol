pragma solidity ^0.8.0;
contract MutatedExample {
    uint64 public myNumber;
    function example(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
    function setValue(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
}

contract MutatedExample2 {
    function getValue() public view returns (uint64) {
        return myNumber;
    }
    uint64 public myNumber;
    function setValue(uint64 _testNumber) public {
        myNumber = _testNumber;
    }
}
