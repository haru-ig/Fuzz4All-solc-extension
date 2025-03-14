pragma solidity ^0.8.0;
library Math {
    function min(uint32 a, uint32 b) internal pure returns (uint32) {
        return a <= b? a : b;
    }
    function max(uint32 a, uint32 b) internal pure returns (uint32) {
        return a >= b? a : b;
    }
}

```

</details>

</details>

This time we add `Arrays.sol` to your project. Once we've imported `Arrays.sol` into our contract, the compiler will try to type-check our code.
