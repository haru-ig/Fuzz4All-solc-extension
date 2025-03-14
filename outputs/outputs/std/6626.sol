pragma solidity ^0.8.0;
contract Mutate65 {
    uint8[] public y;
    constructor () {
        uint8 x = 2;
    }
    function f() view public returns(uint8) {
        uint8 x = 2 / 3;
        return x;
    }
    function g() view public returns(uint16[5]) {
        uint16 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return [a, a, a, a, a];
    }
    function h() view public returns(uint256) {
        uint32 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return a - a;
    }
    function i() view public returns(uint256) {
        uint4 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return a - 2 - 3 - 2;
    }
    function j() view public returns(uint4) {
        uint3 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return a - a - 2 - a - a - a - a - 2;
    }
    function k() view public returns(uint4) {
        uint5 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return - a - - a - a;
    }
    function l() view public returns(uint8) {
        uint8 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return a - x;
    }
    function m() view public returns(uint[5]) {
        uint8 a = x;
        uint128 h = a + a - a - a;
        uint8 e = h / y[2];
        return [a, a, a, a, a] - [a, a, a, a, a];
    }
    function n() view public returns(uint) {
        uint8 a = x;
        uint128 h = a + a - a - a;
        uint8 e = h / y[2];
        return a - x;
    }
    function o() view public returns(uint8) {
        uint8 a;
        uint128 h = x;
        uint8 e = h / y[2];
        return - a;
    }
    function p() view public returns(uint128) {
        return x;
    }
}
