pragma solidity ^0.8.0;
contract semanticEquivalentMutation4 {
    struct ArrayMutability{
        uint z;
        uint[5] array;
    }
    function semanticEquivalent(ArrayMutability memory A)
    public
    pure
    returns (uint)
    {
        uint a;
        uint b;
        uint z;
        uint[5] memory x;
    }
}

contract semanticEquivalentMutation4 {
    struct ArrayMutability{
        uint z;
        uint[3] array;
    }
    function semanticEquivalent(ArrayMutability memory A)
        public
        pure
        returns (uint)
    {
        uint a;
        uint b;
        uint z;
        uint[3] memory x;
    }
}
