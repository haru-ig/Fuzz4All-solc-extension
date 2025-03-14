pragma solidity ^0.8.0;
contract B {
    uint MAX_INTEGER;
    uint constant RANGE = 10;
    uint num1;
    uint num2;
    uint r;
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
    function setOutputs(uint x) public {
        uint num = num1 + num2 + x;
        uint num3 = num1 + num2 + r;
        r = num + 1;
        num3 = num + num2 + 0;
    }
    function getOutputs() public returns(uint r2) {
        r2 = num1 + num2 + (num1 * num2);
        r = num1 + num2;
    }
}
