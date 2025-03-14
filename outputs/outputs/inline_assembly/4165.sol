pragma solidity ^0.8.0;
contract Mutators {
    function test_5 () public returns (uint256 res) {
    }
    function test_1 (uint256 _a) public returns (uint256 res) {
        res = 1;
        _a = _a - 1;
        res = _a + res;
        res = _a + res + _a - res;
    }
    function test_3 () public returns (uint256 res) {
        res = test_2(res);
    }
}
