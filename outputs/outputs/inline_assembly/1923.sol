pragma solidity ^0.8.0;
contract newY {
    uint256 public x;
    uint256 public constant y = 60;
    function f() public returns (uint256) {
      return x;
    }
    function func() public {
      uint256 z = x;
      while (x == 123) {
        x++;
        z = z + x + y;
      }
    }
}
```

# Advanced use-cases

In this section, we'll look at further cases where Inline Assembly is used. As with most compiler options, there are three kinds of Inline Assembly options; *assembly*, *library* and *inline*.

## Solidity Library

Since libraries allow for modular functionality, libraries can be used in many different ways in Solidity. As with any kind of user-defined contract, libraries can also take parameters:
```solidity
// Example of use in a library:
contract myLib {
    function myLibFunc(uint param) public pure {
        //...
    }
}
```

The main advantage to using a library this way is the compilation speed. Libraries are meant to provide features that the compiler does not itself generate. This speed difference is extremely noticeable, especially on larger or more complex contract.

If a contract uses a library, and that library also uses Solidity's own functionality, that functionality takes approximately twice as much compile time as the actual user contract, so libraries are very powerful! On the other hand, libraries cannot access and add functionality to user-defined contracts using their functions.

For this reason, libraries should normally accept and use parameters. This prevents people from passing arbitrary values as parameters when they shouldn't, for example, by adding a new function that takes a boolean parameter.

Note that libraries can also be used via inheritance.

## Contract-wide Inline Assembly

In the most common case, inline assembly has been used for modifying smart contracts' behavior at runtime. Since its very low level, it can be used even though the compiler doesn't generate the code for these changes.

For example, the contract below takes on the value of `123` from memory, and subtracts it from itself, in assembly:
```text

x := mload(add(x, 1))
mstore(0x40, x)

```
To perform a computation that depends on the value of another variable, the contract needs to store this value in memory—as it would with other variables—but also need to read the value from memory to perform the
