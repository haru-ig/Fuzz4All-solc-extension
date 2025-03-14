pragma solidity ^0.8.0;
contract PristineFallbackMutatedFallbackMutatedFallbackMultiData
{
    uint public fallbackValue;
    bytes32 public key;
    constructor(bytes32 _key) public {
        fallbackValue = 4;
        key = _key;
    }
    function mutate() public {
        fallbackValue = 5;
        key = "Bar";
        emit SomeEvent(key, fallbackValue);
    }
    function getEvent(bytes32 _key, uint _fallbackValue) public {
        fallbackValue = _fallbackValue;
        key = _key;
    }
    function emitSomeEvent(bytes32 _key, uint _fallbackValue) public {
        fallbackValue = _fallbackValue;
        key = _key;
    }
    event SomeEvent(bytes32 key, uint value);
}

```
