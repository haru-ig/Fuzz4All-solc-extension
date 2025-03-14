pragma solidity ^0.8.0;
contract Mutators {
    function test_4 () public returns (uint256 res) {
    }
    function test_2 () public returns (uint256 res) {
        res = 11;
    }
    function test () public returns (uint256 res) {
        res = test_2();
    }
}
