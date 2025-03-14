pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    uint _fee;
    constructor(uint fee) {
        _fee = fee;
    }
    receive() external payable {
        _ = _fee + msg.value;
    }
}
