pragma solidity ^0.8.0;
contract A {
    uint x;
    uint MAX_UINT = 0xffffffff;
    function set_MAX_INT_INDEX() public {
        x = 0x1;
    }
    function get_MAX_INT_INDEX() public view returns(uint) {
        return x;
    }
    function set_RANGE_INDEX() public {
        x = 0x0;
    }
    function get_RANGE_INDEX() public view returns(uint) {
        return x;
    }
    constructor() public{
        set_RANGE_INDEX();
    }
}
contract B {
    uint constant MAX_INTEGER = 0xffffffff;
    uint constant RANGE = 10;
    uint num1;
    uint num2;
    uint r;
    function setInputs(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
    function getOutputs() public returns(uint r2) {
        r2 = num1 + num2 + (num1 * num2);
        r = num1 + num2;
    }
    function set_NUM1_INDEX() public {
        num1 = 0x1;
    }
    function set_NUM2_INDEX() public {
        num2 = 0x1;
    }
    function get_NUM1_INDEX() public view returns(uint) {
        return num1;
    }
    function get_NUM2_INDEX() public view returns(uint) {
        return num2;
    }
    function get_RANGE_INDEX() public view returns(uint) {
        return r;
    }
    function setInputs_1(uint a, uint b) public {
        num1 = a;
        num2 = b;
    }
}
contract D is A {
    constructor() public {
        A.set_MAX_INT_INDEX();
    }
}
contract E is B {
    constructor() public {
        B.set_RANGE_INDEX();
    }
}
contract F {
    uint constant MAX_INTEGER = 0xffffffff;
    uint constant RANGE = 10;
    uint num1;
    uint num2;
    uint r;
    constructor() public {
        A.set_RANGE_INDEX();
        B.set_NUM1_INDEX();
        B.set_NUM2_INDEX();
    }
    function setInputs(uint a, uint b) public {
        num1 = a
