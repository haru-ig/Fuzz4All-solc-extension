pragma solidity ^0.8.0;
contract mutatedFallbackMultiData2{
    uint public fallbackValue;
    bytes32 public oldKey;
    constructor(bytes32 k) public {
        fallbackValue = 2;
        oldKey = k;
    }
}
