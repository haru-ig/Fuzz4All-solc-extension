pragma solidity ^0.8.0;
contract semanticEquivalentMutation9 {
    struct ArrayA {
     address value;
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
        B.x++;
        B.y2 = 1;
        bool t = true;
        bool[] memory xx;
        uint zt;
        uint st;
        bool y2 = false;
        bool xz = false;
    }
    function semanticEquivalentAfterMutation2(ArrayA memory A, ArrayA memory B)
    public
    pure
    returns (uint)
    {
        ArrayA memory C = B;
        B.value = A.value;
        B.x--;
        B.y2 = 2;
        bool t = true;
        bool[] memory xx;
        uint zt;
        uint st;
        bool y2 = false;
        bool xz = false;
    }
}
