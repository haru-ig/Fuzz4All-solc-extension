pragma solidity ^0.8.0;
contract semanticEquivalentMutation7B {
    struct ArrayA {
     bool x;
     bool[] isPresent;
     bool isPresent2;
     bool[] isNotPresent;
     bool[] isNotPresent2;
    }
    struct ArrayB {
     uint256 x;
     bool isPresent;
     bool isPresent2;
     bool isNotPresent;
     bool isNotPresent2;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        bool t;
        bool[] memory xx;
        bool[] memory xxx;
        uint zt;
        uint st;
        uint xz;
    }
}
