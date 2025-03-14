pragma solidity ^0.8.0;
contract NoFallback {
    fallback() external payable {}
}
