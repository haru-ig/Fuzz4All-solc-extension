pragma solidity ^0.8.0;
contract BetterCase124 {
    uint256 array;
    uint256 min;
    uint256 max;
    uint256 sum;
    uint256 elem0;
    uint256 elem1;
    uint256 elem2;
    uint256 elem3;
    uint256 elem4;
    uint256 elem5;
    function getMin() public view returns (uint256) {
        return min;
    }
    function getMax() public view returns (uint256) {
        return max;
    }
    function getSum() public view returns (uint256) {
        return sum;
    }
    function get0() public view returns (uint256) {
        return elem0;
    }
    function get1() public view returns (uint256) {
        return elem1;
    }
    function get2() public view returns (uint256) {
        return elem2;
    }
    function get3() public view returns (uint256) {
        return elem3;
    }
    function get4() public view returns (uint256) {
        return elem4;
    }
    function get5() public view returns (uint256) {
        return elem5;
    }
    function set(uint256 setMin, uint256 setMax, uint256 setSum, uint256 elem0, uint256 elem1, uint256 elem2, uint256 elem3, uint256 elem4, uint256 elem5)
