pragma solidity ^0.8.0;
library S {
    function f() public pure {
        uint256 x;
        x--;
    }
}

pragma solidity ^0.8.0;
library S {
    bool x;
    function f() public pure {
        byte b;
        uint8 u8;
        uint x8;
        uint256 xx;
        uint64 x64;
        uint128 x128;
        uint y;
        bool r = x >= x;
        bool f = uint8(bool(x)) == uint8(x);
        bool r1 = uint256(uint(b+b) >> 1) > uint256(uint(b+b) >> 1);
        bool r2 = uint256(uint(b)-uint(b+b) + 1) > uint256(b - 1);
        bool r3 = uint256(uint(uint256(b)) | uint256(uint(b)) + 2) > uint256(uint(b) + 2);
        bool r4 = uint256(uint128(x)) | uint256(uint(b)) + 2) > uint256(uint(b) + 2);
        bool r5 = uint256(uint(uint160(x))) | uint256(uint(b)) + 1) > uint256(uint(b) + 1);
        bool r6 = uint256(uint8(b)) | uint256(uint(uint160(y))) + 1) > uint256(uint(uint160(y))) + 1;
        uint8 r7 = uint8(b) | uint160(y) + 1;
        uint128 r7bits = uint256(uint8(x)) | uint256(uint(x8));
        uint128 r80 = uint128(uint(uint128(x))) | uint256(uint8(x));
        uint256 r80u = uint256(uint(uint256(b))) | uint256(uint(uint128(x))) | uint256(uint(uint8(x))) - uint256(uint(x8)) + uint256(x8);
        assert(r);
        assert(f);
        assert(r1);
        assert(r2);
        assert(r3);
        assert(r4);
        assert(r5);
        assert(r6);
        assert(r7 == r80);
        assert(r7bits == r80u);
        assert(r7 == uint128(b));
        assert(r80 == uint8(b));
        assert(r64 == uint
