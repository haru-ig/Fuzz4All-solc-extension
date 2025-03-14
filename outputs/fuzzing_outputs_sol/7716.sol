pragma solidity ^0.8.0;
contract MutatedSemantics {
    function f() public returns (uint256) { return 1; }
    function g() public returns (uint[1]) { return [1]; }
    function h() public returns (uint[1]) {
        uint[5] storage a;
        a[0] = 0x1234;
        return [a[0]];
   }
    function i() public returns (uint32, uint, uint, uint, uint[4]) {
        uint32 m = 0xabcdef0;
        uint m1 = 0x5678901;
        uint m2 = 0x1234;
        uint m3 = 0xdeadbeef;
        uint m4 = 0xffffff0;
        uint[4] storage a;
        a[0] = m;
        a[1] = m1;
        a[2] = m2;
        a[3] = m3;
        return (m, m1, m2, m3, a);
    }
    function j() public returns (uint[1]) {
        return [1];
    }
    function k() public returns (uint[1]) {
        uint[1] storage a;
        a[0] = 0xabc;
        return [a[0]];
   }
    function l() public pure returns (uint) {
        return 0;
   }
    function m(uint256 n) public returns (uint) {
        return uint(n);
   }
    function n() public returns (bytes32 b) {
        uint x = 0x123456;
        b = uint256.overflow(n, x);
        return b;
    }
    function o() public view returns (bytes20) {
        bytes20 x = 0xef;
        x = uint256.overflow(n, x);
        return x;
    }
    function p() public returns (struct { bool flag; uint8 _data; bytes1 d2; bytes4 i2; }) {
        uint x = 0x5678;
        (bool flag, uint8 _data, bytes1 d2, bytes4 i2) = uint256.overflow(n, x);
        return (flag, _data, d2, i2);
    }
    function q() public returns (uint[1] memory) {
        uint[1] memory x;
        x[0] = 0x1234;
        return x;
   }
    function r() public pure returns (uint4[3] memory) {
        uint4[3] memory x;
        x
