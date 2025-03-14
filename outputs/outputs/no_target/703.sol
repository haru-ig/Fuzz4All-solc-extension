pragma solidity ^0.8.0;
contract MutatedExample3 {
    function example(uint64 _testNumber) public {


        myNumber = revert(_testNumber);
    }
    uint64 public myNumber;
    function setValue(uint64 _testNumber) public {
        myNumber = revert(_testNumber);
    }
}
