pragma solidity ^0.8.0;
contract R2 {
        uint b;
        uint a;
        constructor(uint _x) public {
        a = _x;
        b = 0;
        b = a + a^a;
        b = b + b*b;
        b = b + 1 + a;
    }
    function setb(uint _x) public {
        b = _x;
        b = b + b*b;
        b = b + 1 + b;
    }
    function setc(uint _x) public {
        b = _x;
        b = b + b*b;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
        b = b + 135^99;
    }
    function get() public view returns (uint) {
        return a ^ b;
    }
}
contract R3 {
        uint b;
        uint a;
        constructor(uint _x, uint _y) public {
        a = _x;
        b = _y;
        b = a + a^a;
        b = b + b*b;
        b = b + 1 + a;
    }
    function setb(uint _x, uint _y) public {
        b = _x;
        b = b + b*b;
        b = b + 1 + b;
    }
    function setc(uint _x, uint _y) public {
        b = _x;
        b = b + b*b;
