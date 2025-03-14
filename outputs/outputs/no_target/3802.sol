pragma solidity ^0.8.0;

        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function seta(uint _x) public {
        a = _x;
        b = a*a*a;
        b = b + b*b*b;
        b = b + b + a;
    }
    function setb(uint _x) public {
        a = _x;
        b = a*a*a;
        b = a*a*b;
        b = b + b + a;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a*a*a*a*a + b*b*b*b*b + b;
    }
    function get() public view returns (uint) {
        return b + b*b;
    }
}
