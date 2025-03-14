pragma solidity ^0.8.0;
contract test271 {
    uint[252] b;
    bytes4[256] f;
    constructor() public {
        for (uint i = 0; i < b.length; i++) b.push(999);
        for (uint i = 0; i < f.length; i++) f[0] = 999;
    }
    function test() public returns (bool) {
        for (uint i = 0; i < 250; i++) b[30] = 1;
        for (uint i = 0; i < 254; i++) f[30] = 1;
        for (uint i = 3; i < 252; i++) b[1234] = 1;
        for (uint i = 3; i < 256; i++) f[1234] = 1;
        return false;
    }
}
