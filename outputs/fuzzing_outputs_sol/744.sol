pragma solidity ^0.8.0;
interface IReceiver {
    function receiveMessage(uint256) public;
}

pragma solidity ^0.8.0;
contract FallbackReceiver {
    function receiveMessage(uint256 _value) public payable {
        IReceiverWithFallback receiverWithFallback = IReceiverWithFallback(msg.sender);
        receiverWithFallback.receiveMessage(_value);
    }
}
