pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations3 {
    uint internal x;
    uint[42] internal x_obj = [3685, 255, 200, 175];
    function testArray() public returns (uint result) {
        for (uint i = 0; i < 3; i++) {
            x_obj = [0, 0, 0, 0];
            result = x_obj.data[1];
        }
    }
}
