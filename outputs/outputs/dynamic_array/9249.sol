pragma solidity ^0.8.0;
contract semanticEquivalentMutation3B {
    struct ArrayMutability{
        uint z;
        uint[] _array;
    }

    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint[] memory x;
        uint z;
    }
}
