pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateBc {
    uint internal rBc2;
    constructor () public {
        rBc2 = 17;
        rBc2 = rBc2 + 1;
        rBc2 = rBc2 + 2;
        rBc2 = rBc2 + 3;
    }
}

```

As you can see, this doesn't actually work at all. Inline assembly code must be of the form:
```Yul
{ <assembly code> }
```

However, in the previous example, the mutated file shows some code that interacts with variables declared in another file, which is a very important part of why inline assembly code doesn't work.

In case you are unfamiliar with how Solidity interfaces with smart contracts and to avoid mixing the two up, the Yul language is the standard language implemented for the EVM. Yul is a low-level (assembly only) language and can be used in any contract and has strong type safety. In addition to its powerful features, Yul can also be used for high-level applications like writing smart contract libraries or optimizing gas usage.

However, for people that are more familiar with the previous examples, the fact that Yul is an assembly language is a nice sign that the compiler works just like an interpreted language, meaning that you can use it as a programming language.

Note that only primitive variables and functions can be used in-line with assembly, such as 256-bit integers and address variables.

It's worth nothing, however, that unlike Solidity, you can't access the state variables that were declared as state variables. However, a function that modifies the state variables can still access these variables.

That said, we can address the unfamiliar scenario by using an external function to compute a modified value and using the result as a state variable.

```Yul
externalComputeAndStore(rBc2)
<store value here, as defined by `external`>
externalStore()
```

Note that if a contract's code is run in a subsequent transaction (and as a result, an externalCall is executed), the compiler will perform a deep copy of input/output values and use it for state variables.

## Briefly discuss the following:
1. What is inline assembly and how can it be useful?
2. Why should a program contain inline assembly?
3. How can you write inline assembly in Solidity?
4. How can you read the documentation for inline assembly?
5. How can you see
