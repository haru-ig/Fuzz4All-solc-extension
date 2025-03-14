pragma solidity ^0.8.0;
contract semanticEquivalentMutation {

    struct A{
        uint a;
        uint b;
        uint c;
        uint[100] memory x;
    }
    function semanticEquivalent(A memory a)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint z;
        uint x;
    }
}
