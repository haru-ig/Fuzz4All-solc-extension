pragma solidity ^0.8.0;
contract ExistingContract {
    constructor() {
        uint immutable public array_ = 0x1231241231;
    }
    function checkArray() view public returns (uint256) {
        return array_;
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint256[] internal array;
    function checkArray() view public returns (uint256 num) {
        return array.length;
    }
}
```

Here is a list of Solidity linter rules that are currently supported:

- [X] Always put parenthesis around arguments.
- [X] Only function declaration is allowed on a single line.
- [X] Never use `if` or `loop` in `for` and `for...in` loops.
- [X] If control flow is not explicitly handled through `return`, `break` or `continue`, then `return` should also not be used at all.
- [X] Never use `bool` or `uint` as the type of variable in contracts.
- [X] Use `selfdestruct` for a clean exit.
- [X] Do not use `require` as early as possible inside a contract, use `require()` checks directly on the contract instead.
- [X] All errors are formatted in a standard readable way.
- [X] Variables should be of primitive type (`uint`, `address`, `bool`, `string`) instead of reference type (`contract`).
- [X] Use `uint128` or `uint256` instead of custom `uint`s.
- [X] Never use custom types in your contracts.
- [X] Use `constructor` for your constructor and/or factory functions.
- [X] Do not use inheritance. Use composition instead.
- [X] Functions should have a high number of statements.
- [X] Use a single-entry conditional expression inside `function`s.
- [X] Avoid calling `return` inside a function.
- [X] Always specify `address payable` instead of `address` for input parameters.
- [X] No need to declare `payable` for a constructor with a payable initializer.
- [X] Do not use `require` inside modifiers. `require()` must fail if it evaluates to `false`.
- [X] Never use the `return` keyword, use a single-line return statement or the empty constructor.
- [X] Use `bytes` instead of the `string` type for file paths.
- [X] Do not specify length arguments inside functions.
- [X] Always provide default arguments for functions that do not need default arguments (avoid defaulting parameters if not strictly necessary).
- [X] Always use `emit` for public contract events, such that multiple parties subscribe with different filters.
- [X] When possible, do not use `msg.sender`, use the current transaction sender
