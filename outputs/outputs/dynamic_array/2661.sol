pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations19_rewritten7{
    uint x;
    uint y;
    uint[5] memory A;
    function f(uint y2) public {
        if (x!= y2) {
            return;
        }
        if (x == 5) {
            A[3] = x;
        }
        if (y == 3) {
            delete [] A;
        }
    }
}
