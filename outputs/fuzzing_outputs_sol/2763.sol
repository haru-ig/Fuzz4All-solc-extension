pragma solidity ^0.8.0;
contract Caller4 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    fallback () { return fallback(address(this)); }
    receive() external payable {
        _addr.transfer(address(this).balance);
    }
}
