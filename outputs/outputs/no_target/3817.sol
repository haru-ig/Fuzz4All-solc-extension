pragma solidity ^0.8.0;
contract R3 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = a;
        a = b;
        b = temp;
        return b * a;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a + b + a;
    }
}
contract R4 is R3 {
        uint c;
    constructor(uint _x) public {
        a = _x;
        b = _x;
        c = _x;
    }
    function swap() public returns (uint) {
        uint temp = a;
        a = b;
        b = temp;
        c = a;
        return b + b*b + b + c;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a + b + b + a + a*c + b;
    }
}
