pragma solidity ^0.8.0;
contract Caller {
    constructor(uint startBalance) {
        value = startBalance;
    }
    event LogMessage(string msg);
    mapping(address => uint) public value;
    function _fallback() internal {
        uint x = value[msg.sender];
        value[msg.sender] = value[msg.sender] - x;
        emit LogMessage("This Ether should be passed to Contract.fallback()");
    }
}
