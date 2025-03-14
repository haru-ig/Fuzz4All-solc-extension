pragma solidity ^0.8.0;
contract semanticEquivalentMutation4B {
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
        uint b;
        uint[2] memory x;
        uint z;
    }
}
