pragma solidity ^0.8.0;
contract Solidity {
    uint[] private x;
    uint public y;
    uint public z;
}
```


Note that a type declared using `uint[][] memory` only affects a `uint[] memory` type declared using the `uint[]` type.
A type declared using `uint[][]` (or any other type that is otherwise non-contract-data) and the `memory` modifier is only allowed for arrays of arrays, which will be modified at compile time. All other types can be modified using the modifer `const` unless the type is immutable.
