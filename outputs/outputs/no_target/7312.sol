pragma solidity ^0.8.0;
contract MutatedAbiCoder2{
    function foo(uint32 a, uint32 b, uint32[3] memory c) public pure returns (uint) {
        return a + b * c[1];
    }
    function bar(uint32 a, uint32 b, uint32 c) public pure returns (uint) {
        return a + b * c;
    }
}
contract MutatedAbiCoder3 {
    function a(uint8 a) public pure returns (uint8) {
        return a;
    }
    function b(uint8 b) public pure returns (uint8) {
        return b;
    }
    function c(uint8 c) public pure returns (uint8) {
        return c;
    }
    function d(uint8 d) public pure returns (uint8) {
        return d;
    }
    function e(uint8 e) public pure returns (uint8) {
        return e;
    }
    function f(uint8 f) public pure returns (uint8) {
        return f;
    }
    function g(uint8 g) public pure returns (uint8) {
        return g;
    }
    function h(uint8 h) public pure returns (uint8) {
        return h;
    }
    function i(uint8 i) public pure returns (uint8) {
        return i;
    }
    function j(uint8 j) public pure returns (uint8) {
        return j;
    }
    function k(uint8 k) public pure returns (uint8) {
        return k;
    }
    function l(uint8 l) public pure returns (uint8) {
        return l;
    }
    function m(uint8 m) public pure returns (uint8) {
        return m;
    }
    function n(uint8 n) public pure returns (uint8) {
        return n;
    }
    function o(uint8 o) public pure returns (uint8) {
        return o;
    }
}
