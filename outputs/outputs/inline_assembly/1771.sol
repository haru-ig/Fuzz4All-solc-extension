pragma solidity ^0.8.0;
contract Example{
    uint x;
    uint y;
}
```


You can read more about the solidity compiler [here](https:

## More on inline assembly
Here you can find more information on how inline assembly works and where you need to look for examples.

* **What is inline assembly?**
Inline assembly is the most common technique for writing code that operates at a very low level, meaning certain standard practices of higher-level languages, such as memory management, variable scope and safety checks may not be present or behave differently. If used incorrectly, it can easily result in undefined or potentially dangerous behavior in your smart contracts, which can expose data and or functions to the attacker.

* **Why use inline assembly?**
Inline assembly can be used to provide more efficient solutions to problem. However, its power can be limited by a few limitations:
* Using inline assembly is very dangerous in case one of the variables or functions is modified in the caller and in the callee.
* Inline assembly only allows for access to a limited set of memory locations. This is an inadequate design for many smart contracts, as more than 32GB of memory is possible and can be shared among a group of contract.
* Inline assembly operates at a very low level, meaning certain standard practices of higher-level languages, such as memory management, variable scope and safety checks may not be present or behave differently.

* **How to use inline assembly?**
If your code uses a library that uses inline assembly, you can still benefit from its power without modifying it to a higher level.

For example, if you have a contract that manipulates or calls a function that may need to do some processing, you can simply use inline assembly instead of writing a separate function like the following:
```

function safeAdd(address a, address b) internal pure returns (uint256) {
    uint256 c = a < b? a : b;
    c += 1; return c;
}
```

## Summary
You should use Inline assembly cautiously when possible. Inline assembly should only be used by experienced developers, and should be avoided if it reduces code readability. If used incorrectly, the compiler may choose not to optimize your code, causing it to fail.
