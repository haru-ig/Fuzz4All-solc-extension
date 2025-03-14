pragma solidity ^0.8.0;
contract R4 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        if (a>b) {return b;}
        a = b;
        b = a;
        return a + a*a + a*b;
    }
    function get() public view returns (uint) {
        if (a>b) {return b;}
        return a + a*a + b;
    }
}
