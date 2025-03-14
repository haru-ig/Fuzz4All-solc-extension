pragma solidity ^0.8.0;
contract semanticEquivalentMutation3 {
    struct ArrayMutability{
        uint[] A;
        uint[] B;
    }
    function semanticEquivalent(ArrayMutability memory A)

    public
    pure
    returns (uint)
    {
        uint z;
        return A.A[0];
    }
}
