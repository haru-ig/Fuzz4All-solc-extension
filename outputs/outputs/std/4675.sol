pragma solidity ^0.8.0;

contract NewMem {
    function g() internal pure returns (uint256, uint256, uint256, uint256) {
        return (2, 4, 6, 8);
    }
}

contract D {

    function g() public returns (uint256) {
        uint256 a = 1 + 1;
        uint256 b = a;
        uint256 c = (a + 1);

        uint256 d = b + 2;
        return d;
    }

    function h() public returns (uint256) {
        uint256 a = 0;
        uint256 b = 1;
        uint256 c = 4;
        return (((a ^ b) ^ c) >> 2) + 13873621372619230;
    }

    function j() public returns (uint16) {
        return g() ^ g() << 16;
    }

    function k() public returns (uint64) {
        uint64 a = 1;
        uint64 b = a;
        uint64 c = a + 1;
        uint64 d = b + 43;
        uint64 e = a << 32;
        return ((c - d) + ((d + 1) << 32)) + 5 * (e - a);
    }

    function l() public returns (uint256) {
        return 0xFF ^ 0xFFFF ^ 0xFFFFFFFF ^ 0xFFFFFFFFFFFFFFFF;
    }

    function m() public returns (uint256) {
        uint256 a = 1;
        uint256 b = a;
        uint256 c = a - 3;
        uint256 d = ((a + b) << 1) + 1;
        return (e ^ f) + x ^ s - 7 / (c + 2) + 11 * (b + c
