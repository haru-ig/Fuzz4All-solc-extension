pragma solidity ^0.8.0;
contract semanticEquivalentMutation3 {
    uint[10000000] memory memoryA[1];
    function isSemanticEquivalent1(uint z)
    public
    pure
    returns (uint)
    {
        return z;
    }
}
