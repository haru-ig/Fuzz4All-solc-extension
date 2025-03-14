pragma solidity ^0.8.0;
contract semanticEquivalentMutation4 {
    struct ArrayMutability{
        uint z;
        uint[2] array;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint z;
        uint[2] memory x;
    }
}
