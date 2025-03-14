pragma solidity ^0.8.0;
contract MutatedFallbackModifier {
    struct Fallback {
        mapping(bytes32 => bytes) storage;
    }
    uint256 constant INITIAL_VALUE = 23;
    Fallback[3] storage storedFallback = Fallback;
    constructor() {
        storedFallback[0][keccak256(abi.encodePacked(INITIAL_VALUE))] = abi.encode(INITIAL_VALUE);
    }
    function setZ(uint256 _val) public {
        storedFallback[2][keccak256(abi.encodePacked(_val))] = abi.encode(_val);
    }
}
