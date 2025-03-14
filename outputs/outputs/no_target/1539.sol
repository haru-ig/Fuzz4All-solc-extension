pragma solidity ^0.8.0;
contract Semantic0020 {
    function equal() public pure {
        bool[] memory x = new bool[](4);
        while(true) {
            x[1] == x[0];
        }
    }
}
```

## Resources

A [Semi-Formal Semantics of the Smart Contract Design](https:
