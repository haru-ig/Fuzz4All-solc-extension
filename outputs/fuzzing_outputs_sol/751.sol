pragma solidity ^0.8.0;
interface IReceiverWithFallback {
    function receiveMessage(uint256 _value) external payable;
    function withdrawEther() external payable;
}
contract ReceiverWithFallback {
    uint256 public balance;
    address payable public fallbackAddress;
    constructor(address payable _fallback) {
        fallbackAddress = _fallback;
    }
    receive() external payable {
        balance += msg.value;
        fallbackAddress.transfer(msg.value);
    }
    function withdrawEther() external payable {
        fallbackAddress.transfer(msg.value);
    }
}













interface ICaller {
    function returnAddress() public constant returns (address);
}
contract Caller {
    address public constant ownerAddress = 0x700C947e147B6397dB712a54406Ab319fE75204F;
    address public constant fallbackFunctionAddress = 0x700C947e147B6397dB712a54406Ab319fE75204F;
    function callAddress() public returns (address) {
        return fallbackFunctionAddress;
    }
    function callWithReceivingEther() public returns (address) {
        IReceiverWithFallback receiver = IReceiverWithFallback(caller());
        receiver.receiveMessage(75);
        return address(0);
    }
    function callWithEmergencyFallback() public returns (address) {
        fallbackAddress;
    }
}
