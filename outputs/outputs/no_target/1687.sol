pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 public immutable input;
    modifier m() {
        input = input + 1;
        _;
    }
}
