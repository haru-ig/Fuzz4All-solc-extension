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
    function getOutputs_semanticallyEquivalent() public returns(uint r2) {
        r2 = (num1 + num2) + num1 * num2;
        r = num1 + num2;
    }
    function getOutputs_semanticallyEquivalent_modified() public returns(uint r3) {
        uint temp1 = num1;
        uint temp2 = num2;
        uint num3 = temp1 + temp2;
        uint num4 = num1 + num2;
        r3 = num3 + num4;
    }
}
contract C {
    function a() public pure returns(uint r) {
        return 40;
    }
}
contract M1 {
    function a() public pure returns(uint r) {
        return 42;
    }
}
contract M2 is M1 {
    function b() public pure returns(uint r) {
        return 50;
    }
}
contract M3 is M2 {
    function c() public pure returns(uint r) {
        return 58;
    }
}
function f(uint x) public pure returns(uint r) {
    if (x > RANGE) {
        return 11;
    }
    return 42 + x;
}
function g(uint[5] memory x) public returns(uint r) {
    for (uint i = 0; i < 5; i++) {
        x[i] = 58;
    }
    return 41;
}
contract E {
    mapping(uint=>uint) nums;
    function num_of_nums() public view returns(uint)
