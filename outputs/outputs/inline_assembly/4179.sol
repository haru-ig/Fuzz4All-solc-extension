pragma solidity ^0.8.0;
contract Mutators {
    uint a;
    function() public returns (uint) {
        a = 10;
        return a;
    }
}
```

## The Solidity Language Features, Variables and Data
Solidity is a programming language primarily used to create smart contracts. Since it is mostly a low-level language and lacks strong syntax and features as the other languages, the language constructs can be hard to grasp but can be fairly readable. Additionally, every Solidity program includes a set of pre-recorded instructions called "metadata," allowing you to look back at a whole program for understanding.

Solidity supports a number of data types within the language, and variable declarations are the primary entrypoint into the contract. In addition, in addition to built-in types like `uint`, `bool`, etc., there are a number of additional, library types which can be imported to provide additional functionality that is available to developers outside of the context of contracts with the solidity compiler.

The compiler has various optimizations, including the removal of empty constructor functions that are not needed by default.
