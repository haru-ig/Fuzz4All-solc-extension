pragma solidity ^0.8.0;
struct MutabilityTest {
    ArrayMutability immutable array;
}
struct ArrayMutability2 {
    uint[30] array;
}
struct ArrayMutability3{
    uint[3] array;
}
contract semanticEquivalentMutation4 {
    function semanticEquivalent2(ArrayMutability2 memory A) public pure returns (uint) {
        return A.array[0];
    }
    function semanticEquivalent3(ArrayMutability3 memory A) public pure returns (uint) {
        return A.array[0];
    }
}
