pragma solidity ^0.8.0;
contract Example{
    uint256 public immutable x = 0;
    constructor() public {
        x = 0;
        x = 1;
        x = 0;
        x = 0;
        x = 1;
        x = 0;
        x = 1;
        x = 1;
        x = 0;
        x = 0;
    }
}

```

## 0xa. Inline Assembly to write modular and reusable code.

This section is based on the earlier section about the benefits of inline assembly. However it introduces a few new mechanisms related to writing modular and reusable code in Solidity, rather than just writing simple functions.

Consider a simple program which generates the smallest `a` array:

```Solidity
function minimalArray(uint256 len) public pure returns(uint256[] memory a){
    uint256[] memory b = new uint256[](len);
    a = b;
    for (uint256 i = 0; i < len; i++) {
        b[i] = 1 << (64 - 8 * i);
    }
    return b;
}
```

As you can see the code used to generate the minimal array has many duplicate statements, which is a form of code smell and unnecessarily complicates the code while increasing maintenance effort. The `minimalArray` function could instead be expressed as follows:

```Solidity
function minimalArray(uint256 len) public pure returns(uint256[] memory a){
    a = new uint256[](len);
    for (uint256 i = 0; i < len; i++) {
        a[i] = 1 << (64 - 8 * i);
    }
    return a;
}
```

An `ArrayBase` contract could be implemented to support common operations such as equality comparisons. Implementing an `ArrayBase` contract for a given array type allows us to reuse the base `minimalArray` function. In the following section we will revisit this example and see how we could optimize the code which generates the minimal array to just access the data array directly. Note that ArrayBase contracts are generally not inherited by classes directly in the language. Instead, they are part of the Solidity standard contract library. As such, they are not in the scope of the standard smart contracts library. See [Part I: Standard library](https:

```Solidity
pragma solidity ^0.8.0;
