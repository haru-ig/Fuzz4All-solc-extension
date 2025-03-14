pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations4
{
    function f() public {
        uint128 a1 = 0, a2;
        a2 = a1;
        a2 = a2;
        a2 = uint128(0);
    }
    constructor() {
        a[1] = 0;
    }
}
pragma solidity ^0.8.0;
