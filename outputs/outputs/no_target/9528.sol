pragma solidity ^0.8.0;
contract Contract1 is Interface15 {
    uint256 constant SENDING_VALUE = 100;
    event NewSender(address _recipient, uint _value);
    receive () external payable {
        new NewSender(msg.sender, SENDING_VALUE);
    }
}
