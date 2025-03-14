pragma solidity ^0.8.0;
contract semanticEquivalentMutation3 {
    struct ArrayMutability{
        uint[3] array;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint z;
        return A.array[0];
    }
}
