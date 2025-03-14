pragma solidity ^0.8.0;
contract semanticEquivalentMutation9 {
    struct ArrayA {
     address x;
     uint256 y;
    }
    struct ArrayB {
     uint256 x;
     bool y;
     uint z;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x = 1;
        uint256 z = 2;
        uint y = 3;
        B.y2 = 1;
        bool xz = false;
        uint zt;
        uint st;
        bool y2 = false;
    }
}
