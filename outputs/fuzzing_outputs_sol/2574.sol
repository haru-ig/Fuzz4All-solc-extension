pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallbackMultiData
{
    uint public fallbackValue;
    bytes32 public key;

    constructor(bytes32 _key) public {
        fallbackValue = 2;
        key = _key;
    }

    function mutate() public {
        fallbackValue = 3;
        key = "foo";
    }
}
