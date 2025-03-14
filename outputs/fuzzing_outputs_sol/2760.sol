pragma solidity ^0.8.0;
contract Caller4 {
    payable address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external {
        _addr.transfer(address(this).balance);
    }
    fallback () external payable {}
}
