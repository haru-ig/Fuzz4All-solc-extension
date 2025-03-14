pragma solidity ^0.8.0;
contract MutatedCaller{
    address payable _addr;
    uint256 _amount;

    constructor(uint256 _amount) { _addr = payable(msg.sender); _amount = _amount; }
    Receive() external payable {
        _addr.transfer(msg.value);
        msg.sender.send(_amount);
    }
    fallback () external payable {   }
}
