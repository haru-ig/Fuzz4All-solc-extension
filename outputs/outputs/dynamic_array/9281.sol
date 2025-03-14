pragma solidity ^0.8.0;

contract semanticEquivalentMutation9 {
    struct ArrayA {
     address x;
     uint256 y;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        uint x = 1;
        uint y = 3;
        A.y = 1;
        bool y2 = false;
        return 1;
    }
}
