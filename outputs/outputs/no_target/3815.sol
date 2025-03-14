pragma solidity ^0.8.0;
contract R3_Mutate {
    uint c;
    uint a;
    uint b;
    constructor(uint _x) public {
        c = _x;
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = a;
        a = b;
        b = temp;
        return swap() - c;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a + b;
    }
}
