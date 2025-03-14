pragma solidity ^0.8.0;
contract Mutate0016b {
    uint256 input;
    modifier m() {
        input = input / (input / 10);
        _;
    }
}
