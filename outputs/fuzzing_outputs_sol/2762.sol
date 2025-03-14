pragma solidity ^0.8.0;
contract Caller1 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback () external payable {   }
}
