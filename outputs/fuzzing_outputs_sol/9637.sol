pragma solidity ^0.8.0;
contract Fallback {
    fallback() external payable;
    fallback() external;
    fallback() public external payable;
    fallback() public external;
    fallback() contract nonfallback() external;
    fallback() contract nonfallback() external payable;
}
