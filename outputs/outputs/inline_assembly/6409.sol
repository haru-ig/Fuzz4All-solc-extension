pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {

    modifier canIncreaseByZeroAndTen(uint d) {
        d = d + 1;
        _;
    }
    modifier canIncreaseByTenAndTen(uint b) {
        b = b + 10;
        _;
    }
    modifier canIncreaseByTenAndTen2(uint a) {
        a = a + 20;
        _;
    }
    modifier canIncreaseby100And20(uint j) {
        j = j + 20;
        _;
    }
    modifier canIncreaseby100AndTen(uint w) {
        w = w + 10;
        _;
    }
    modifier canIncreaseby5000And20(uint c) {
        c = c + 20;
        _;
    }
    function increaseByZeroAndTen(uint d) public canIncreaseByZeroAndTen(d) {
        i += 1;
    }
    function increaseByTenAndTen(uint b) public canIncreaseByTenAndTen(b) {
        j += 10;
    }
    function increaseByTenAndTen2(uint a) public canIncreaseByTenAndTen2(a) {
        a += 20;
    }
    function increaseBy100AndTen(uint j) public canIncreaseby100AndTen(j) {
        j += 20;
    }
    function increaseBy100AndTen2(uint w) public canIncreaseby100AndTen2(w) {
        w += 10;
    }
    function increaseBy5000AndTen(uint c) public canIncreaseby5000AndTen(c) {
        c += 20;
    }
    function increaseBy5000AndTen2(uint k) public canIncreaseby5000AndTen2(k) {
        k += 10;
    }
