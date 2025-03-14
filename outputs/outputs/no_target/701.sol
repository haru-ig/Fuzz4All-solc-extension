pragma solidity ^0.8.0;
contract MutatedExample3 {
    uint64 public myNumber;
    uint64 public newValue;
    uint64 newNumber;
    function example() public {
        newNumber = 0x11223344;
        myNumber = 5;
        return;
    }
    function setValue(uint64 _newValue) public {
        newValue = _newValue;
    }

    function getValue() public view returns (uint64) {
        return myNumber;
    }
    function modifyValue(uint64 _newValue) public {
        newValue = _newValue;
    }
}
contract MutatedExample4 {
    uint64 public myNumber;
    function example2() public {
        myNumber = 3;
    }
    uint64 public nonZeroMyNumber;
    function getValue(uint64 _nonZeroMyNumber) public view returns (uint64) {
        nonZeroMyNumber = _nonZeroMyNumber;
        return nonZeroMyNumber;
    }
    function setValue(uint64 _newValue) public {
        newValue = _newValue;
    }
    function modifyValue(uint64 _newValue) public {
        newValue = _newValue;
    }
}
