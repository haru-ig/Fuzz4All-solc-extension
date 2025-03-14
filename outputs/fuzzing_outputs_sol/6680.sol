pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    mapping(address => uint) public amount;
    fallback() external payable {
        uint temp = amount[msg.sender];
        amount[msg.sender] = amount[msg.sender] + amount[msg.sender];
        emit LogMessage("");
    }
}
