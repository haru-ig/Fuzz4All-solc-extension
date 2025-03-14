pragma solidity ^0.8.0;
contract MutatedCaller {
    Mutater callMe = Mutater(msg.sender);
    address payable caller = msg.sender;
    bytes32 data;
    receive() external payable {
        caller.transfer(callMe.callMe.balance);
        caller.send(10 ether);
    }
    function useCallMe() external payable {
        caller.send(callMe.callMe.balance);
        callMe.callMe.transfer(msg.sender);
    }
    function setData(bytes32 _data) external {
        data = _data;
    }
}
