pragma solidity ^0.8.0;
contract D{
    uint public names;
    uint public value;
    function setValue(uint x) public {
        value = x + value;
    }
    function getValue() public view returns (uint) {
        return getValue(value);
    }
    function getValue(uint x) public view returns (uint) {
        return x + 1;
    }
}
