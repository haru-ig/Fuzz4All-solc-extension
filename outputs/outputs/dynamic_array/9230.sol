pragma solidity ^0.8.0;
contract semanticEquivalentMutation4 {
    struct ArrayMutability1 { uint[2][3] array; }
    struct ArrayMutability2 { uint[2][3][] array; }
    struct ArrayMutability3 { uint[2][] array; }
    struct ArrayMutability4 { uint[][] array; }
    struct ArrayMutability5 { uint [][] array; }
    function semanticEquivalent(ArrayMutability1 memory A)
    public
    pure
    returns (uint)
    {
        uint z;
        return A.array[0][0];
    }
    function semanticEquivalent(ArrayMutability2 memory B)
    public
    pure
    returns (uint)
    {
        uint z;
        return B.array[0][0];
    }
    function semanticEquivalent(ArrayMutability3 memory C)
    public
    pure
    returns (uint)
    {
        uint z;
        return C.array[0][0];
    }
    function semanticEquivalent(ArrayMutability4 memory D)
    public
    pure
    returns (uint)
    {
        uint z;
        return D.array[0][0];
    }
    function semanticEquivalent(ArrayMutability5 memory E)
    public
    pure
    returns (uint)
    {
        uint z;
        return E.array[0][0];
    }
}
