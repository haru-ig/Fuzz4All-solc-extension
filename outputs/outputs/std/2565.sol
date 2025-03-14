pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint public value;
    constructor() public {
        value = 1;
    }
    function getNewValue() public returns(uint) {
        return ++value;
    }
    function setValue(uint newValue) public {
        value = newValue;
    }
}
