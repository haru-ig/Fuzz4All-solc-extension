pragma solidity ^0.8.0;
contract BetterCase742 {
    uint array;
    uint min;
    uint max;
    uint sum;
    uint elem0;
    uint elem1;
    uint elem2;
    uint elem3;
    uint elem4;
    uint elem5;
    function getMin() public pure returns (uint) {
        return min;
    }
    function getMax() public pure returns (uint) {
        return max;
    }
    function getSum() public pure returns (uint) {
        return sum;
    }
    function get0() public pure returns (uint) {
        return elem0;
    }
    function get1() public pure returns (uint) {
        return elem1;
    }
    function get2() public pure returns (uint) {
        return elem2;
    }
    function get3() public pure returns (uint) {
        return elem3;
    }
    function get4() public pure returns (uint) {
        return elem4;
    }
    function get5() public pure returns (uint) {
        return elem5;
    }
    function set(uint setMin, uint setMax, uint setSum, uint elem0, uint elem1, uint elem2, uint elem3, uint elem4, uint elem5) public pure {
        min = setMin;
        max = setMax;
        sum = setSum;
        elem0 = elem0;
        elem1 = elem1;
        elem2 = elem2;
        elem3 = elem3;
        elem4 = elem4;
        elem5 = elem5;
    }
    function sort() public pure {
        if (getMin() < getMax()) {
            set(
