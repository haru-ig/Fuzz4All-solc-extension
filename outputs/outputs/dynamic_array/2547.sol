pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations6
{
    uint128[] a;
    constructor() public {
        a[127] = a1[0];
        a.push(a1[0]);
        a1.push(a1[0]);
    }
    uint128[] a1;
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations7
{
    struct Struct {
        uint256[][] b1;
    }
    Struct f;
    constructor () public {
        uint256[][] memory b2 = new uint256[128][];
        b2[127] = new uint256[](0);
        f.b1[127] = b2;
    }
}
