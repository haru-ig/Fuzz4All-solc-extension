pragma solidity ^0.8.0;
contract SemanticEquivalentMutation5B is semanticEquivalentMutation4B {

    function semanticEquivalent(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        bool t;
        bool[] memory xx;
        bool[] memory xxx;
        uint zt;
        uint256 st;
        uint xz;
    }

    function semanticEquivalent(ArrayA memory A, ArrayB memory B) public pure returns (uint) {
        return 0x42 * memorySize(A) * 0x41 + 0xB1 * memorySize(B);
    }

    function memorySize(ArrayA memory A) internal pure returns (uint) {
        uint size;
        size = 1 + memorySize(A.x);
        size += memorySize(A.isPresent);
        size += memorySize(A.isPresent2);
        size += memorySize(A.isNotPresent);
        size += memorySize(A.isNotPresent2);
        return size;
    }
}
