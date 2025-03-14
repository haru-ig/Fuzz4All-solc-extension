pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations19 {
    function update(uint[] memory _array) public {
        uint arrLen = _array.length;
        _array[arrLen - 1] = _array[arrLen - 1] + 1;
    }
}
