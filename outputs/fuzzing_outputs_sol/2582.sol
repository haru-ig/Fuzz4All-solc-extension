pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallbackMultiData3{
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 _key) public {
        fallbackValue = 1;
        key = _key;
    }
    function mutate() public view {
        fallbackValue = 2;
        key = "bar";
    }
}
