pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    uint256 _amount;
    constructor() { _addr = payable(msg.sender); _amount = 10000000 * 10**9; }
    receive() external payable {
        _addr.transfer(0);
    }
    fallback () external payable {
        _addr.transfer{ value: uint(-1)}(uint(-1));
        _addr.transfer(1);
    }
}
contract Caller3 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount2) { _addr = payable(msg.sender); _amount = _amount2; }
    receive() external payable {
        _addr.transfer(_amount);
    }
    fallback() external payable {
        _addr.transfer(uint(-1));
        _addr.transfer(uint(sender));
    }
}
