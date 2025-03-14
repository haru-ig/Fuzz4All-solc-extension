pragma solidity ^0.8.0;
contract R4 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public {
        uint temp = a;
        a = b;
        b = temp;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a - b + b + b;
    }
}
