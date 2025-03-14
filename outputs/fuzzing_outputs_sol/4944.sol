pragma solidity ^0.8.0;
contract TwoFallback {
    receive() external payable {}

    receive() external pure {}
}
