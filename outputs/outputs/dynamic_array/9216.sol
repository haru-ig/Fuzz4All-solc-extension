pragma solidity ^0.8.0;
contract semanticEquivalentMutation {

    struct ArrayMutability{
        uint[] array;
        uint size;
    }

    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint z;
        return A.array[z];
    }

}
