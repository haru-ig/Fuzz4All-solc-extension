pragma solidity ^0.8.0;
contract MutatingReturnsArraysModifier {
    uint256 public sum = 0;


    function test0() returns(uint256) {
        uint256[] memory a = new uint256[](5);
        a[1] = 5;
        a[2] = 6;
        a[3] = 7;
        a[4] = 8;
        a[5] = 9;
        sum = add255(a);
        return sum;
    }


    function test1() returns (uint256) {
        uint256[] memory a = new uint256[](5);
        a[1] = 5;
        a[2] = 6;
        a[3] = 7;
        a[4] = 8;
        a[5] = 9;
        sum = add255(a);
        return sum;
    }

    function test2() returns(uint256) {
        uint256[] memory a = new uint256[](2);
        a[1] = 5;
        sum = subtract256(a);
        return sum;
    }

    function test3() returns(uint256) {
        uint256[] memory a = new uint256[](10, 9);
        a[1] = 9;
        a[2] = 7;
        a[3] = 6;
        a[4] = 5;
        a[5] = 4;
        a[6] = 3;
        a[7] = 2;
        a[8] = 1;
        a[9] = 0;
        sum = subtract256(a);
        return sum;
    }

    function test4() returns (uint256) {
        uint256[] memory a = new uint256[](3);
        a[1
