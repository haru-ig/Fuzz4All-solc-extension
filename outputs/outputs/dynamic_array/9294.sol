pragma solidity ^0.8.0;
contract semanticEquivalentMutation9 {
    struct ArrayA {
     uint8 x;
     uint256 y;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        uint x = 0;
        uint y = 1;
        A.x = 2;
        return 2;
    }
}
