pragma solidity ^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x = 1;
    function bar() public pure returns (uint) {
        assembly { mstore(add(x, 1), mload(add(x, 1))) }
        return 2;
    }
}
```
## 7
Create a semantically equivalent program using the `copy` function from a non-constant memory location (see [Chapter 5](https:
```Solidity
function bar() public pure {
    assembly { copy(0, 0) }
}
```
## 8
```Solidity
pragma solidity^0.8.0;
contract SemanticsEquivalence24xEquivalence {
    uint constant x = 1;
    function bar() public pure {
        assembly { mstore(x, 2) }
    }
}
/ This program fails to compile. It's missing a return statement after the return instruction; the return statement needs to be at the end of the function. Also, the memory location x is non-constant, so copying from it returns 0.
contract SemanticsEquivalence24xAffirmation {
    function bar() public pure {

        return 1;
    }
}
```
```Solidity
pragma solidity^0.8.0;
contract SemanticsEquivalence13xDifference {
    uint constant x = 1;
    function bar() public pure {
        uint memory value = x;
    }
}
/ This program fails to compile. copy() returns an assembly error. The copy() function does not mutate variables or function state, so trying to call it would simply return 0.
```
```Solidity
contract SemanticsEquivalence13xDifference2 {
    uint constant x = 1;
    function bar() public pure {

        uint memory value = x;
    }
}
```
> [What is a Memory Location? ](https:
## 9
For every type a memory location has, we can read from it from address x to address x+32 (1+32), or, if we want to output the size of a memory location, we can read from it from address x to address x+pointerSize (the size of the data type used for a memory location, not including struct, memory, or function
