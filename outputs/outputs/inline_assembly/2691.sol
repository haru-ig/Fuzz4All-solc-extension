pragma solidity ^0.8.0;
contract D {
    uint public names;
    uint public value;
    function setValue(uint x) public {
        value = x + value;
    }
    function callSetValue(uint x) public {
        D(address(this)).setValue(x);
    }
    function getValue() public view returns (uint) {
        return value;
    }
}
