pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations5
{
    uint128[] public a;
    constructor(uint32 _num) {
        a.push(a[0]);
    }

}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations3
{
    uint[6][5] public a;
    function test(uint[] calldata _values) public pure {
        for (uint i = 0; i < _values.length; i++) {
            a[0][i] = a[0][i] | 1;
        }
    }
}
