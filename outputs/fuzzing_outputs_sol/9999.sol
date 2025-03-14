pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint a;
    uint b;
    constructor() {
        a = 3;
        b = 5;
        x = 8;
    }
    function testCall() public {
        a = a + 1;
        b = b + 2;
        x = a / b;
    }
    function getDivided() public view returns(uint)  {
        return x;
    }
    function getX() public view returns(uint) {
        return x;
    }
}
