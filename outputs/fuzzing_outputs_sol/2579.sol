pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallbackMultiData2 {
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 _key) public payable {
        fallbackValue = 2;
        key = _key;
    }
    function mutate() public {
        fallbackValue = 3;
        key = "bar";
    }
}
