pragma solidity ^0.8.0;
contract mutatedFallbackMultiData {
    uint public fallbackValue;
    bytes32 public oldKey;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        oldKey = k;
    }

    fallback() public payable {}
}
