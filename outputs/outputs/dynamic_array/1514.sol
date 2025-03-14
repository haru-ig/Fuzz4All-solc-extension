pragma solidity ^0.8.0;
contract SemanticsEquivalentEfficientDynamicArrayType {
    uint[2][10] private array19249116408062;
    uint number;
    function Test() public {
        number = 190_49116408062;
        for (uint i = 0; i < array19249116408062.length / 2; i++) {
            array19249116408062[i * 2][1] = 3;
        }
    }
}
```
