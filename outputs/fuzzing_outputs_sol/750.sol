pragma solidity ^0.8.0;
interface IReceiverWithFallback {
    function receiveMessage(uint256 _value) external payable;
    function withdrawEther() external payable;
}
contract ReceiverWithFallback {
    uint256 public etherBalance;
    address public fallbackAddress;
    constructor(address payable _fallback) {
        fallbackAddress = _fallback;
    }
    receive() external payable {
        emit LogEvent("Received", msg.value);
        fallbackAddress.transfer(msg.value);
    }
    function withdrawEther() external payable {
        fallbackAddress.transfer(msg.value);
    }
    event LogEvent(string _name, uint256 _value);
}
