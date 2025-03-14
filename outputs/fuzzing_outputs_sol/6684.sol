pragma solidity ^0.8.0;

contract Caller {
    event LogMessage(string msg);
    mapping(address => uint) public amount;
    function _fallback() internal returns (uint) {
        uint x = msg.value;
        amount[msg.sender] = amount[msg.sender] + x;
        emit LogMessage("This Ether should be passed to Contract.fallback()");
        return x;
    }
}
