pragma solidity ^0.8.0;
contract ReceiveFunction {
    address addrReceiver;
    uint data;
    uint private constant DATA = 8;
    constructor (address _addrReceiver) {
        addrReceiver = _addrReceiver;
    }
    receive() external payable virtual {
        addrReceiver.transfer(msg.value);
    }
    receive() external pure virtual {
        msg.sender.transfer(msg.value);
    }
    pure function execute(uint data) public {
        (bool success, bytes memory result) = addrReceiver.call.value(data)();
        require(success, "receiveFunction: Exception while calling fallback function");
    }
}
