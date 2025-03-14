pragma solidity ^0.8.0;
contract semanticEquivalentMutation {
    struct ArrayLength{
        uint size;
    }
    function semanticEquivalent(ArrayLength memory A)
    public
    pure
    returns (uint)
    {
        return A.size;
    }
}
