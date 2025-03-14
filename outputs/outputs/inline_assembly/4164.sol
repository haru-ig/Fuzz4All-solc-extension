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
        res = 11;
        res = test_2(res);

    }
}
