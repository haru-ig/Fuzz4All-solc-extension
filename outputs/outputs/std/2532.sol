pragma solidity ^0.8.0;
contract Mutate {
    uint x;
    uint y;
    constructor(uint _x, uint _y) {
        x = _x;
        y = _y;
    }
    function modAdd(uint a, uint b, uint m) public pure returns (uint) {
        uint z = (a + b) % m;
        uint hi = (uint160(z) * uint160(z)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        return z;
    }
    function modSub(uint a, uint b, uint m) public pure returns (uint) {
        uint z = (a - b) % m;
        uint hi = (uint160(z) * uint160(z)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        return z;
    }
    function modMul(uint a, uint b, uint m) public pure returns (uint) {
        uint z = a * b;
        uint hi = (uint160(z) * uint160(z)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        return z;
    }

    function add() public {
        uint m = (uint)1e18;

        if (y > m) throw;
        y = modAdd(y, 4, m);
    }
    function subtract() public {
        uint m = (uint)1e18;
        if (y < m) throw;
        y = modSub(y, 4, m);
    }
    function multiply() public {
        uint m = (uint)1e18;
        if (y < m) throw;
        y = modMul(y, 4, m);
    }
}
