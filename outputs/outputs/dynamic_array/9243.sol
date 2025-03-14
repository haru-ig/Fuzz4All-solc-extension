pragma solidity ^0.8.0;
contract semanticEquivalentMutation5 {
    struct ArrayMutability{
        uint z;
        uint[2] array[10];
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint[2] memory x;
    }
}
