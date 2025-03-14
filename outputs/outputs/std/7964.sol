pragma solidity ^0.8.0;
contract Math_solidiarity {
    uint256 constant M_LOG_E = 2**252 - 783;
    uint256 constant M_LOG_2 = 2**252 - 4;
    uint256[] internal arr;


    constructor(uint256 num) {
        this.arr.push(num);
    }


    function sumArr() public view returns (uint256 sum) {
        for (uint256 i = arr.length - 1; i >= 0; --i) {
            uint256 num = arr[i];
            sum += num;
        }
    }


    function avgArr() public view returns (uint256 avg) {
        uint256 len = arr.length;
        for (uint256 i = 0; i < len; ++i) {
            uint256 num = arr[i];
            avg += num;
        }
        if (len > 0) {
            avg = avg / len;
        }
    }


    function plus() public pure returns (uint256 z) { z = x + y; }


    function minus() public pure returns (uint256 z) { z = x - y; }


    function negate()
