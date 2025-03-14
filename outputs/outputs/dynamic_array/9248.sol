pragma solidity ^0.8.0;
contract semanticEquivalentMutation4C {
    struct ArrayMutability{
        uint z;
        uint[2] _array;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint[] memory[] memory x;
    }
}
