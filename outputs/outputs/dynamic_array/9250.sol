pragma solidity ^0.8.0;
contract semanticEquivalentMutation4A {
    uint x;
    uint[] memory y;
    uint z;
    function semanticEquivalent(
        uint a,
        uint b,
        uint[] memory c,
        uint d
    )
    public
    pure
    returns (uint,uint,uint[])
    {
        uint x;
        uint y;
    }
}
