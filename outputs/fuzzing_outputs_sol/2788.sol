pragma solidity ^0.8.0;
contract Caller4 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) {
        _addr = payable(msg.sender);
        _amount = _amount;
    }
    receive() external payable {
        _addr.transfer(msg.value);
    }
    fallback() external payable {
        _addr.transfer(_amount);
    }
}
