pragma solidity ^0.8.0;
contract SymbolicEquality_ArrayMutations23v2 {
    uint[] memory a;
    constructor () public {
        uint b = a.length;
        uint c = a.length;
        uint d = b.length;
        uint y;
        uint x;
        a = new uint[](1);
        y = a[0];
        a[0] = 32;
        x = a[0];
        if (x == a[0]) y = (x / y);
    }
}
