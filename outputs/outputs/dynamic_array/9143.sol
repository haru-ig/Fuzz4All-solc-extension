pragma solidity ^0.8.0;
contract C {

    uint256 internal x;
    struct S {
        uint256 foo;
    } struct S2 {
        uint256 bar;
    } S storage s;
    mapping(uint256 => S) sMap;

    function f(uint256 _i, uint256 _j) {
        s.foo = 1;
        sMap[_i].foo = _i;
        s2.bar = _j;
        s2.foo = 2;
    }

    function g(uint256 _j) {
        s2.bar = 1;
        sMap[2].bar = _j;
        s2.bar = _j+1;
        sMap[2].bar = _j+2;
        sMap[1].bar = _j+3;
        sMap[2].bar = _j+4;
        s2.bar = _j+5;
        sMap[2].bar = _j+6;
        s2.bar = _j+7;
        sMap[2].bar = _j+8;
        sMap[2].bar = _j+9;
        sMap[2].bar = _j+10;
        s2.bar = _j+11;
        sMap[2].bar = _j+12;
        sMap[2].bar = _j+13;
        s2.bar = _j+14;
        sMap[2].bar = _j+15;
        s2.bar = _j+16;
        sMap[2].bar = _j+17;
        sMap[2].bar = _j+18;
        sMap[1].bar = _j+19;
        sMap[2].bar = _j+20;
        sMap[_i].bar = 1;
        s2.bar = 2;
    }

    function h(uint256 _j, uint256 _i, uint256 _k) {
        sMap[_i].foo = _j;
        sMap[_j].foo = _i;
        sMap[_i].bar = _j;
        sMap[_j].bar = _i;
        sMap[_i].bar = _j*8;
        sMap[_j].bar = _i*8;
        sMap[_i].bar = _j+8;
        sMap[_j].bar = _i+8;
        sMap[_i].bar = _j+1
