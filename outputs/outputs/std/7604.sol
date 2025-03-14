pragma solidity ^0.8.0;
contract BetterCase123 {
    uint[] memory array;
    uint min;
    uint max;
    uint sum;
    uint elem0;
    uint elem1;
    uint elem2;
    uint elem3;
    uint elem4;
    uint elem5;
    constructor() public { }
    function getMin() public view returns (uint) {
        min = array[0];
        for (uint i = 1; i < array.length; ++i) {
            if (array[i] < min) min = array[i];
        }
        return min;
    }
    function getMax() public view returns (uint) {
        max = array[0];
        for (uint i = 1; i < array.length; ++i) {
            if (array[i] > max) max = array[i];
        }
        return max;
    }
    function getSum() public view returns (uint) {
        sum = 0;
        for (uint i = 0; i < array.length; i++) {
            sum = sum + array[i];
        }
        return sum;
    }
    function get0() public view returns (uint) {
        return elem0;
    }
    function get1() public view returns (uint) {
        return elem1;
    }
    function get2() public view returns (uint) {
        return elem2;
    }
    function get3() public view returns (uint) {
        return elem3;
    }
    function get4() public view returns (uint) {
        return elem4;
    }
    function get5() public view returns (uint) {
