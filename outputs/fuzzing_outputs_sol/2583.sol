pragma solidity ^0.8.0;
contract NonFallbackMutatedFallbackMultiData2 {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 k) public {
        fallbackValue = 1;
        key = k;
    }
    function mutate() public {
        fallbackValue = 2;
        key = "bar";
    }
}
