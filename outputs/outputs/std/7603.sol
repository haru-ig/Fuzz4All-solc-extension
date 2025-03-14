pragma solidity ^0.8.0;
contract BetterCase123 {
    uint128 array;
    uint128 min;
    uint128 max;
    uint128 sum;
    uint128 elem0;
    uint128 elem1;
    uint128 elem2;
    uint128 elem3;
    uint128 elem4;
    uint128 elem5;
    function getMin() public view returns (uint128) {
        return min;
    }
    function getMax() public view returns (uint128) {
        return max;
    }
    function getSum() public view returns (uint128) {
        return sum;
    }
    function get0() public view returns (uint128) {
        return elem0;
    }
    function get1() public view returns (uint128) {
        return elem1;
    }
    function get2() public view returns (uint128) {
        return elem2;
    }
    function get3() public view returns (uint128) {
        return elem3;
    }
    function get4() public view returns (uint128) {
        return elem4;
    }
    function get5() public view returns (uint128) {
        return elem5;
    }
    function set(uint128 setMin, uint128 setMax, uint128 setSum, uint128 elem0, uint128 elem1, uint128 elem2, uint128 elem3, uint128 elem4, uint128 elem5)
