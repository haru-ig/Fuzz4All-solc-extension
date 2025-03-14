pragma solidity ^0.8.0;
contract R2 {
        uint8 a;
        uint16 b;
    constructor() public {
        a = 1;
        b = 99;
    }
    function seta(uint8 _x) public {
        a = _x;
        b = a + a^a;
        b = b + 2 + a;
    }
    function setb(uint16 _x) public {
        b = _x;
        a = b;
        b = b + 1 + b;
    }
    function setc(uint8 _x) public {
        b = _x;
        a = 3 + a;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^389;
        b = b + 135^99;
    }
    function get() public view returns (uint) {
        return (b + a) + (a % a);
    }
}


contract Test {
    struct State {
        uint8[64] storage;
    }
    constructor() public {
        uint256 num_tests_passed;
        State storage state;
        (state.storage) = new uint8[](64);
