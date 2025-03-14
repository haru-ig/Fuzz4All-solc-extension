pragma solidity ^0.8.0;
contract B {
    uint MAX_INTEGER;
    uint constant RANGE = 10;
    uint num1;
    uint num2;
    uint r;
    constructor( uint a, uint b) public{
        num1 = a;
        num2 = b;
    }
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
    function getOutputs() public returns(uint r2, uint r3) {
        r2 = num1 + num2 + (num1 * num2);
        r3 = num1 + num2;
    }
    function getOutputs_modified() public returns(uint r4, uint r5) {
        uint temp1 = num1;
        uint temp2 = num2;
        uint num3 = temp1 + temp2 + (temp1 * temp2);
        uint num4 = num1 + num2;
        uint temp3 = num1;
        uint temp4 = num2;
        uint num5 = temp3 + temp4 + (temp3 * temp4);
        r4 = num3 + num4;
        r5 = num5;
    }
}
