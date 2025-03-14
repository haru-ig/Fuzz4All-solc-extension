pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations2
{
    uint128 public a;
    constructor() {
        a = uint128(a + a);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations3
{
    uint128 public a;
    constructor() {
        a = uint128(a + a + a);
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations4
{
    uint128 public a;
    constructor() {
        a = uint128(memory + memory + memory);
    }
}
