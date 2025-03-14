pragma solidity ^0.8.0;
contract FallbackCaller {
    receive() external payable { }
    fallback() external payable { }
    receive() public payable { }
}
