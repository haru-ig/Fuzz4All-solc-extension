pragma solidity ^0.8.0;
contract C {
    mapping(bytes32 => mapping(uint => address[])) public balances;
    uint a = 0;
    assembly {
        a := balances{0x0123456789abcdef,0xabcd}:32;
    }
    uint b = balances[0xabcd][0x0123456789abcdef];
}
  uint256 b = balances[0xabcd][0x0123456789abcdef];
```
To use inline assembly, you will use the `assembly` keyword. `asm` must be prefixed by a word, then the assembly code to be executed, and then an semicolon.

For example:
```javascript
    uint a = 0;
    asm {
        a := 10;
        a := add(a, sub(a, 1));
    }
```

As with any programming language, it takes more time to learn than a more human-readable assembly.

If you are unfamiliar with Solidity, please check [this tutorial](https:
