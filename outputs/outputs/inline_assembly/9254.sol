pragma solidity ^0.8.0;
contract A {
    uint constant _uint64 = 0xa70;
    function mutatedBy(uint) public pure returns (uint) {
        uint i = uint(uint(_uint64) * (16)); return (uint(i - (uint(_uint64) * 10) ** 32) * (16));
    }
}
```

**Additional References**
- [Solidity by Example — Advanced Compilation Techniques](https:
- [Solidity by Example — Assembly-To-C Compiler](https:

## See more resources

- [Solidity Docs: Assembly vs. Intermediate Language](https:
- [Solidity Docs: Inline assembly](https:
