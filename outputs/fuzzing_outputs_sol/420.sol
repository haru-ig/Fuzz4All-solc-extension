pragma solidity ^0.8.0;
contract SimpleCaller {
    receive() external payable returns (uint) {}
    fallback() external payable returns (uint) {}
}
