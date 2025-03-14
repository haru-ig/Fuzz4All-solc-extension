pragma solidity ^0.8.0;
contract B {
    uint constant RANGE = 10;
    uint MAX_INTEGER;
    uint num1;
    uint num2;
    uint r;
    constructor( uint a, uint b) public{
        num1 = a;
        num2 = b;
        MAX_INTEGER = (uint(2 ** 255) - 1);
    }
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
        MAX_INTEGER = a;
    }
    function getOutputs() public returns(uint r2) {
        r2 = (num1 + num2 + num1) / (num2 - num1);
        r = (num1 + num2 + num1) & (num2 - num1);
    }
    function getOutputs_modified() public returns(uint r3) {
        uint temp1 = num1 >> 2;
        uint temp2 = num2 - ((RANGE - 1) << 2);
        uint num3 = temp1 * temp2;
        uint num4 = (num1 << 2) + (num2 << 2) + (num1 + num2);
        r3 =  num3 + num4 + (temp1 * temp2);
    }
}
