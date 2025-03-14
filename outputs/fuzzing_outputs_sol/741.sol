pragma solidity ^0.8.0;
interface IReceiverWithFallback {
    function receiveMessage(uint256 _value) external;
}
