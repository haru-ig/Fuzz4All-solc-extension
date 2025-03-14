pragma solidity ^0.8.0;
contract C {
    uint constant max = 9223372036854775807;
    uint public x = 5;
    function test() public returns (uint) {
        return min(x, max);
    }
    function min(uint a, uint b) private pure returns (uint c) {
        if (a < b) c = a;
        else c = b;
    }
}
