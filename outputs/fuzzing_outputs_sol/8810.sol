pragma solidity ^0.8.0;
contract TestCallerWithFallback {
    receive() external payable{ }
    fallback() external payable{ }
}
