pragma solidity ^0.8.0;
contract A {
    mapping(uint => uint) public mutableValues;
    constructor() {
        immutableValues[50] = 0;
        mutableValues[50] = 1;
        immutableValues[100] = 0;
        mutableValues[100] = 2;
    }
    function getMutableValue(uint x) public view returns(uint) {
        return x+1;
    }
    function getValue(uint x) public view returns(uint) {
        return x;
    }
    function setValue(uint x, uint value) public {
        x += 1;
        mutableValues[x] = value;
    }
}
