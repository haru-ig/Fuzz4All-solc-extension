pragma solidity ^0.8.0;
contract FallbackMutatedNoStorage {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
    function mutate(uint x) public {
        fallbackValue = 2;
        key = bytes32(uint64(x) + 4);
    }
}
