pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external { }
    fallback () external nonpayable {   }
    function method(address payable _addr_) public { _addr = _addr_; }
}
