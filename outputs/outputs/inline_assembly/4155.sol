pragma solidity ^0.8.0;
contract Mutators {
    uint48 flag;
    function test_1 () public returns (uint256 res) {
        flag = 11;
        res = flag;
    }
}
