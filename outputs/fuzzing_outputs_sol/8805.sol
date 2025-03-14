pragma solidity ^0.8.0;
contract TestFallback {
    uint public constant value = 8;
    fallback() external payable {}
}
