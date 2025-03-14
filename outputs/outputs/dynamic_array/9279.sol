pragma solidity ^0.8.0;
contract semanticEquivalentMutation8 {
    struct ArrayA {
     address x;
     uint256 y;
    }
    struct ArrayB {
     uint256 x;
     bool y;
     uint y2;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x = 1;
        uint y = 3;
        B.y2 = 1;
        bool t = true;
        bool[] memory xx;
        uint zt;
        uint st;
        bool y2 = false;
        bool xz = false;
    }
}
