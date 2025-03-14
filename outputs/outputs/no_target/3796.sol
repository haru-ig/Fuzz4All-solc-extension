pragma solidity ^0.8.0;
contract R2{
        uint a;
        uint b;
    constructor() public {
        a = 0;
        b = 750;
    }
    function seta(uint _x) public {
        a = _x;
        b = a + a^a;
    }
    function setb(uint _x) public {
        a = b;
        b = b + b*b;
    }
}
