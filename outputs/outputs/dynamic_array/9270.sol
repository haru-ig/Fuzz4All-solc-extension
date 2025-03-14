pragma solidity ^0.8.0;
contract semanticEquivalentMutation7B {
    struct ArrayA {
     bool x;
    }
    struct ArrayB {
     uint256 x;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        bool x;
    }
}
