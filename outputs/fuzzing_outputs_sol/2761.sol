pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {
        Caller2 _caller = Caller2(address(this));
        _caller.fallback();
    }
    fallback() external payable {}
}
