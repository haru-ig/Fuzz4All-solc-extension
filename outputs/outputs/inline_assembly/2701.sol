pragma solidity ^0.8.0;
contract E {
    uint public names;
    uint public value;
    function setValue(uint x) public {
        value = x + value;
    }
    function getValue() public view returns (uint) {
        return value;
    }
    function update() public {
        value -= 4;
    }
}
