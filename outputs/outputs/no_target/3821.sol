pragma solidity ^0.8.0;
contract R3 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return b + a - a - b;
    }
    function get() public view returns (uint) {
        return a*a + a+a - b + b + b;
    }
}
