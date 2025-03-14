pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    uint amount;
    mapping(address => uint) public amount;
    function _fallback() internal returns (uint) {
        amount = amount + msg.value;
        emit LogMessage("This Ether should be passed to Contract.fallback()");
        return amount;
    }
}
