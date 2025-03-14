pragma solidity ^0.8.0;
contract test271 {
    uint[10] a;
    address[10] b;
    uint[10] c;
    constructor() public {
        for (uint i = 0; i < b.length; i++) b[i] = address(i);
        for (uint i = 0; i < 10; i++) c[i] = 1;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < c.length; i++) c[0] = 1;
        return false;
    }
}
