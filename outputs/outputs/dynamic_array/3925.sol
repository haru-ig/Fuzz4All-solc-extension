pragma solidity ^0.8.0;
contract D {
    function f() public pure returns(uint i) {
        return 10;
    }
    function g() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](0);
        return tmp;
    }
    function h() public pure returns(uint) {
        return 7;
    }
    function i() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](10);
        return tmp;
    }
    function j() public pure returns(uint) {
        uint[] memory tmp = new uint[](50);
        return tmp.length;
    }
    function k() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](50);
        return tmp;
    }
    function o() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](30,11);
        return tmp;
    }
    function p() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](12,18);
        for(uint ii= 0; ii < 12; ii++) {
            for(uint mm= 0; mm < 18; mm++) {
                tmp[ii][mm] = 777777777;
            }
        }
        return tmp;
    }
    function q() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](3,4);
        uint y = 7;
        tmp[0] = 9;
        tmp[1] = 30;
        tmp[2] = 857;
        return tmp;
    }
    function r() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](32);
        return tmp;
    }
    function s() public pure returns(uint[] memory) {
        uint[] memory tmp = new uint[](4,14);
        for(uint ii= 0; ii < 4; ii++) {
            for(uint mm= 0; mm < 14; mm++) {
                tmp[ii][mm] = 7777777777
