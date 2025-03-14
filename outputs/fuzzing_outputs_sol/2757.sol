pragma solidity ^0.8.0;
contract Caller3 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {
        _addr.transfer(address(this).balance);
    }
    fallback () external payable {}
}
