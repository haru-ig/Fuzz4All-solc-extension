pragma solidity ^0.8.0;
contract Caller is Receiver {

    function payEther(uint input) external payable {
        setValue(input);
        emit SetValue(input);
    }
    receive() external payable {
        Caller.setValue(msg.value);
        emit EtherReceived(msg.value);
    }
    event SetValue(uint input);
    event EtherReceived(uint input);
}
