pragma solidity ^0.8.0;
contract R1 {
        uint a;
        uint b;
    constructor() public {
        a = 0;
        b = 750;
    }
    function seta(uint _x) public {
        a = _x;
        b = a + a^a;
        b = b + b*b;
        b = b + 1 + a;
    }
    function setb(uint _x) public {
        a = b;
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
    }
    function get() public view returns (uint) {
        return a * a + b*b;
    }
}
