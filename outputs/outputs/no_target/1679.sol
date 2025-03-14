pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input = 0;
    modifier m() {
        input = input + 1;
        return m();
    }
}
