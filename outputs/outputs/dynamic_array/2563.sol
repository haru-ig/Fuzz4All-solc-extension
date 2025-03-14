pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations11
{
    uint128[] public a;
    uint128 s;
    uint256 x1 = 10000000000;

    function foo() public {
        a[0] = s;
        a[1] = a[0];
        a[2] = x1;
        a[3] = x1;
        a[4] = a[3] + 1;
    }

}
contract SemanticEquality_AddressMutations12
{





}
