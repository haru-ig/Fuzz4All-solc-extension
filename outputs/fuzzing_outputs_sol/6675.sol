pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);

    mapping(address => uint) public amount;

    fallback() external payable {


        amount[msg.sender] = amount[msg.sender] + msg.value;
        emit LogMessage("");
    }
}
