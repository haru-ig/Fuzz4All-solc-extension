pragma solidity ^0.8.0;
contract D{
    uint public names;
    uint public value;
    uint public increment;
    function setValue(uint val) public {
        value = val + value;
    }
    function getValue() public view returns (uint) {
        return value;
    }
    function add(uint x) public {
        increment = x;
    }
    function subtract() public {
        increment = 0;
    }
    function divide(uint x) public {
        increment = 1;
    }
    function multiple() public {
        increment = 5;
    }
    function multiply(uint y) public {
        increment = multiply(y) + multiply(y);
    }
}
