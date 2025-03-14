pragma solidity ^0.8.0;
contract semanticEquivalentMutation3B {
    struct ArrayMutability{
        uint z;
        uint[] _array;
    }
    function semanticEquivalent2(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint z;
        uint b;
        uint[] memory x;
    }
}
