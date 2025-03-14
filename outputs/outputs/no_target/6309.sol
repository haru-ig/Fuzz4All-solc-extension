pragma solidity ^0.8.0;
contract C {
    function c() public pure returns (address) { uint x; uint y; }
}
contract D {
    function f() public pure returns (address) { uint x; uint y; }
}
contract E {
    function g() public pure returns (address) { uint x; uint y; }
}
contract F {
    function h() public pure returns (address) { uint x; uint y; }
}
contract Main {
    function test1() public{
        uint x;
        uint y = 10;
        uint z = 25_55;
        uint w = 10;
        uint x2;
        uint y2 = 10;
        uint z2 = 25_55;
        uint w2 = 10;
        uint x3;
        uint y3 = 10;
        uint z3 = 9;
        uint w3 = 0;

        (x, y, z, w, x2, y2, z2, w2, x3, y3, z3, w3, ) = (10, 15, 2, 5, 4, 0, 999, 1, 8, 7, 6, 5, 4, 3, 2, 1);
        (x, y, z, w) = (2, 5, 7, 9);

        address A = 0x1234;
        address B = 0x1341234123;
        uint8 i8 = 1;
        uint16 i16 = 1;
        uint32 i32 = 1;
        uint64 i64 = 1;
        uint128 i128 = 1;
        uint256 i256 = 1;
        uint512 i512 = 1;
        int8 i82 = 1;
        int16 i162 = 1;
        int32 i322 = 1;
        int64 i642 = 1;

        while (true){
            x;
        }
        while (true) {
            x;
        }

        do {
            x;
        }
        while (true) {
            x;
        }
    }

    function test2() public {
        int256 x;
        int256 y = 10;
        int256 z = 25_55;
        int256 w = 10;
        int256 x2;
        int256 y2 = 10;
        int256 z2 = 25_55;
        int256 w2 = 10;
        int256 x3;
        int256 y3 = 10;
        int256 z
