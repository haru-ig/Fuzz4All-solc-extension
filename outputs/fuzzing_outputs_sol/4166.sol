pragma solidity ^0.8.0;
contract ReceivableFunction{
    event ReceivedAddress(address indexed _address, uint256 _weiAmount);
    fallback () public payable {
        emit ReceivedAddress(msg.sender, msg.value);
    }
}
