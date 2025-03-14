pragma solidity ^0.8.0;
contract semanticEquivalentMutation5 {
    struct StructMutability{
        uint x;
        uint y;
        bytes50 z;
    }
    function semanticEquivalent (StructMutability storage A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint[2] memory x;
        uint[3] memory y;
        uint[1][19] memory z;
    }
}
