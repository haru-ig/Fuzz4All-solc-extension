pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations7
{
    uint128[1] public array;
    uint256 public arraySize;
    constructor() {
        arraySize = 0;
        array[arraySize] = 0;
    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations9
{
    uint128[] public a;
    constructor() {
        a[0] = 0;
    }

    function testSize() public pure returns (uint128[]) {





        uint128[] memory x = new uint128[](3);
        return x;
    }
}
