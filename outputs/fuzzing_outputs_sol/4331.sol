pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerAndModifier {
    bool internal isPayable;
    address payable private addressTo;
    bytes32 private signature;

    constructor(uint _dummy) {
        isPayable = true;
        addressTo = msg.sender;
        signature = "initialize";
    }

    fallback() payable {
        if (uint(addressToBytes32(signature))!= 12) {
            isPayable = false;
        }
    }
}
