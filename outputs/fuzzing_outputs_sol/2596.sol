pragma solidity ^0.8.0;
contract mutatedFallback{
    uint public fallbackValue;
    bytes32 public oldKey;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        oldKey = k;
    }
    function mutatedCall() public {
        fallbackValue = 2;
        oldKey = keccak256("Hello");
    }
}
