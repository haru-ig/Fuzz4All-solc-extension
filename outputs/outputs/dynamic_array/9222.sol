pragma solidity ^0.8.0;
contract semanticEquivalentMutation2 {
    function semanticEquivalent(uint x)
    public
    pure
    returns (uint)
    {
        uint z;
        return x;
    }
}
