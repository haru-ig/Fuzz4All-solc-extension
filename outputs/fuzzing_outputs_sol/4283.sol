pragma solidity ^0.8.0;
contract MutatedCaller {
    address payable public receiver;
    SimpleFallbackCaller1 public caller;

    constructor(address payable initReceiver) {
        receiver = initReceiver;
        caller = new SimpleFallbackCaller1();
    }

    function setReceiver(address payable newValue) public {
        receiver = newValue;
    }

    function run() public payable {
        receiver.call.value(msg.value)("");
        receiver.call("");
        receiver.call.value.value(msg.value)("Test");
    }
}
