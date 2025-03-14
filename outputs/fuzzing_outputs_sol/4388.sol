pragma solidity ^0.8.0;
contract Caller {
    uint value;  constructor(uint x_) { value = x_; }
    fallback() external payable{}
    receive() external payable{}
}
