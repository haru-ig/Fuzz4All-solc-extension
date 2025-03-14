pragma solidity ^0.8.0;
contract Caller {
    fallback function() public {
        emit FallbackLog(msg.sender);
    }
    receive() external payable {
        emit EtherReceiveLog(address(this), msg.sender, msg.value);
        }
    event receive(address receiver, address sender, uint amount);
    event EtherReceiveLog(address receiver, address senders, uint amount);
    event FallbackLog(address a);
}
