pragma solidity ^0.8.0;
contract semanticEquivalentMutation5C {
    struct ArrayA {
     bool x;
     bool[] isPresent;
     bool isPresent2;
     bool[] isNotPresent;
     bool[] isNotPresent2;
    }
    struct ArrayB {
     uint16 x;
     uint16 y;
     bool isPresent;
     bool isPresent2;
     bool isPresent3;
     bool isPresent4;
     bool isPresent5;
     bool isPresent6;
     boolean isNotPresent;
     boolean isNotPresent2;
     boolean isNotPresent3;
     boolean isNotPresent4;
     boolean isNotPresent5;
     boolean isNotPresent6;
     boolean isNotPresent7;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        uint y;
        bool t;
        bool[] memory xx;
        bool[] memory xxx;
    }
}
contract semanticEquivalentMutation6C {
    struct ArrayA {
     bool x;
     bool[] isPresent;
     bool isPresent2;
     bool[] isNotPresent;
     bool[] isNotPresent2;
    }
    struct ArrayB {
     uint16 x;
     uint16 y;
     uint16 z;
     bool isPresent;
     bool isNotPresent;
     bool isPresent2;
     bool isNotPresent2;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB
