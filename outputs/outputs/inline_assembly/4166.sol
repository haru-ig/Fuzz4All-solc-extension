pragma solidity ^0.8.0;
contract Mutators {
    function test_4 () public returns (uint256 res) {
    }
    function test_2 (uint256 _a) public returns (uint256 res) {
        _a += 11;
        res = _a - 1;
        res /= 2;
    }
    function test_3 () public returns (uint256 res) {
        res = test_2(res);
    }
    function test_1 (uint256 _a, uint256 _b) public returns (uint256 res) {
        _a += 22;
        _b += 88;
        res = test_2(_a - _b);
    }
}


pragma solidity ^0.8.0;

contract Mutators {
    function test_4 () public returns (uint256 res) {
    }
    function test_2 (uint256 _a) public returns (uint256 res) {
        _a += 11;
        res = _a - 1;
        res /= 2;
    }
    function test_3 () public returns (uint256 res) {
        res = test_2(res);
    }
    function test_1 (uint256 _a, uint256 _b) public returns (uint256 res) {
        _a += 22;
        _b += 88;
        res = test_2(_a - _b);
    }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract Mutators {
    function test_4 () public returns (uint256 res) {
    }
    function test_2 (uint256 _a) public returns (uint256 res) {
        _a += 11;
        res = _a - 1;
        res /= 2;
    }
    function test_31 (uint256[] memory _arr){
        res = 2;
        for (uint256 idx=0; idx<2; idx++) {
        uint256 value1 = _arr[idx];
        uint256 value2 = 22;
        uint256 value3 = 444;
        uint256 value4 = 8
