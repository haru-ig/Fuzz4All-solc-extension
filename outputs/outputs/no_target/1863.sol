pragma solidity ^0.8.0;
contract Mutate {
    uint public x;
    uint256 constant ONE = 1;
    function Mutate(uint256) public {
        x ^= 5 * ONE;
    }
}
