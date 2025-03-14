pragma solidity ^0.8.0;
contract BetterCase1234 {
    uint min;
    uint max;
    uint sum;
    uint elem0;
    uint elem1;
    uint elem2;
    uint elem3;
    uint elem4;
    uint elem5;
    function getMin() public view returns (uint) {
        return min;
    }
    function getMax() public view returns (uint) {
        return max;
    }
    function getSum() public view returns (uint) {
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
        return elem5;
    }
    function set(uint setMin, uint setMax, uint setSum, uint elem0, uint elem1, uint elem2, uint elem3, uint elem4, uint elem5) public {
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
    function sort() public {
        if (getMin() < getMax()) {
            set(min, max, sum
