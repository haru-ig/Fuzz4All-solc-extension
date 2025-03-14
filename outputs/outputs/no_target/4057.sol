pragma solidity ^0.8.0;
contract S0 { uint public s0;
    function f(uint x) public payable { s0 *= x; }
}

```

**[⬆ Back to top](#solidity-0-8-0)**

## StateMutability

```{note}
StateMutability is now a pre-processor keyword.
```{note}
The pre-processor keyword "pragma" is deprecated and state mutability is now the pre-processor keyword for the next version of Solidity.
```

State-mutability keywords are used to allow or disallow the ability to modify the value of storage variables at any time, at the block- or transaction-level. Unspecified state-mutability can still be specified at a function call site, by calling a non-mutating function with the same name.

```{note}
The "const" qualifier is now deprecated and the feature is unavailable in Solidity 0.1.
```

To declare a function as non-payable, add the "pure" modifier.

```{admonition} Important Note
When developing solidity, the best practice is not to ever modify user-specified state at all. Rather, initialize to zero at a contract construction or to the default value when none is provided and use smart constructors, so initialization is only done once in an entire system and only when necessary.
```

```{note}
When working against the compiler, do not attempt to modify the state directly, even if accessing the variable with a variable name. The compiler can detect and prevent you from introducing such a state modifying function.
```

```{tip}
To learn more on state-mutability, please read the [Ethereum 2.0 specification for state transitions and state mutations](https:
```

## StateMutabilityModifier

```{note}
Note that if a function is a pure function, then its return type must always be pure. See the [Function Modifiers](/docs/lang-ref-stateMutability.md#modifier) section.
```

State-mutable modifiers offer a variety of functions for function modifiers that can be specified by the author or by clients.

The modifier has two functions that are not a pure function: `modifier isNotMutable()` and `modifier mutable()` (the first will produce a warning). The second function will fail the contract compilation if the state variable is already mutable. The `mutable()` modifier can be used as an alternative to `not mutable()`, which is recommended in most cases.
