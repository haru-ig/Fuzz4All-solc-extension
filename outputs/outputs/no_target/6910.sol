pragma solidity ^0.8.0;
contract TestPrecompiled444570 {
    function f() public pure returns (uint) {
        uint _x = 2;
        uint _y = 0x234545;
        uint _z = 0x101010101010101010000000000000000000000000000000000000000000;
        uint _a = 1 + uint(uint(_y - 1)) ^ uint((_z ^ 0xDEADBEEF25BEEF) - uint(uint(_x << 32)))) / (_y.div(_z));
        return (_a > _x);
    }
}

```
