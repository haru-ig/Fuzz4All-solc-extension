pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {




        uint256 _amount = uint256(msg.value);
        _addr.transfer(_amount);
    }
    fallback () external payable {   }
}



contract Caller3 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) { _addr = payable(msg.sender); _amount = _amount; }
    receive() external payable {
        _addr.transfer(msg.value);
    }
    fallback() external payable {
    }
}
