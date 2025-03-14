pragma solidity ^0.8.0;
contract MutatedFallback {
    uint balance1;
    uint balance2;
    address payable contractCaller;
    bytes32 valueHash;

    constructor(address payable _caller, bytes32 _valueHash) {
        balance2 = 1000;

        contractCaller = _caller;
        valueHash = _valueHash;


    }


    fallback() external payable {
        require(msg.value <= balance1 && msg.value >= balance2, "Message is too high. Must be less than balance1 and over or equal to balance2");

        contractCaller.transfer(msg.value);
        contractCaller.transfer(600000);
    }

    receive() external payable {
        require(msg.value == 1000 && msg.data.length == 0 && valueHash!= 0, "Caller got an invalid message. Should transfer 1000 USD.");
    }
}
