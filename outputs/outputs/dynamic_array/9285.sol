pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    struct ArrayB {
     uint8 x;
     uint256 y;
    }
    function semanticEquivalentAfterMutation(ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x = 0;
        uint y = 1;
        B.x = 2;
        bool x2 = true;
        return 1;
    }
}
