pragma solidity ^0.8.0;
contract semanticEquivalentMutation4 {
    struct ArrayWithDynamicSize {
        uint[4] array;
    }
    function semanticEquivalent(ArrayWithDynamicSize memory A) public pure returns (uint) {
        uint z;
        return A.array[0];
    }
}

contract SemanticEquivalentMutation {
    function semanticEquivalentMutation(ArrayMutability memory A) public pure returns (uint) {
        uint z;
        return A.array[0];
    }
    function semanticEquivalentMutation(ArrayWithDynamicSize memory A) public pure returns (uint) {
        uint z;
        return A.array[0];
    }
}
