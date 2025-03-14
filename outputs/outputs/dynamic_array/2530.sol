pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations2_2
{
    uint128[] public a;
    constructor() {
        a[1] = uint128(a[0]);
    }
}

pragma solidity ^0.8.2;
contract SemanticEquality_ArrayMutations_2
{
    uint128[] public a;
    constructor() {
        a[0] = uint128(a[0]);
        a[1] = uint128(a[0]);
    }
}

pragma solidity ^0.8.2;
contract SemanticEquality_ArrayMutations_2_2
{
    uint128[] public a;
    constructor() {
        a[1] = uint128(a[0]);
    }
}

pragma solidity ^0.8.2;
contract SemanticEquality_ArrayMutations_2_3
{
    uint128[] public a;
    constructor() {
        a[0] = uint128(a[0]);
        a[1] = uint128(a[0]);
        a[0] = uint128(a[0]);
    }
}
```

# Sources
- **Solidity Language Specification** ([https:
- **Solidity Wiki** ([https:
