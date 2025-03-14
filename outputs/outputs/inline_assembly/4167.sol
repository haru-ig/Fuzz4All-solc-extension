pragma solidity ^0.8.0;
contract Mutators2 {
    function test_2 (uint256 _a, uint256 _b) public returns (uint256) {
        _a += _b;
        return 0;
    }
    function test_4 () public returns (uint256) {
        return 11;
    }
    function test_3 () public returns (uint256) {
        return 11;
    }
}
