pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15 {
    bytes32 public constant A_BYTE = bytes32(99);
    bytes32[] public b;
    uint public i;
    uint[] public f(uint x) public {
        if (x >= 1){
        } else {
            x++;
        }
        for(uint i;i < 5;i++)
        b[i] = A_BYTE;
    }
}
