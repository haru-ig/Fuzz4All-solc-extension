pragma solidity ^0.8.0;
contract Caller {
    address payable public receiver;
    event FallbackReceived(address sender);
    fallback() external payable {
        receiver.transfer(msg.value);
        emit FallbackReceived(address(receiver));
    }
}
