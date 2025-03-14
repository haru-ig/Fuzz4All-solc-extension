pragma solidity ^0.8.0;
contract Caller {
    Receiver receiver;
    function setReceiver(address _receiver) public {
        receiver = Receiver(_receiver);
    }
    function setCallValue(uint _value) public returns (bool) {
        receiver.setValue(_value);
        return true;
    }
}
