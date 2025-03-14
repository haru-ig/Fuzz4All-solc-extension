pragma solidity ^0.8.0;
contract semanticEquivalentMutation4B {
    struct ArrayA {
     address x;
     bool[] isPresent;
     bool[] isNotPresent;
    }
    struct ArrayB {
     uint256 x;
     bool isPresent;
     bool isNotPresent;
    }
    function semanticEquivalent(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        address x;
        bool[] memory xx;
        bool[] memory xxx;
        uint st;
        address y;
        uint zz;
        bool[] memory yy;
        uint256 zz2;
        xx = A.isPresent;
        x = A.x;
        xxx[0] = true;
        xxx[1] = false;
        if (false) {
            xx = xxx;
        }
        xx[1] = true;
        zz = xxx[0];
        ss = xx.length;
        x = x.send.value(42)();
        zz2 = 0;
    }
}

pragma solidity ^0.8.0;
contract semanticEquivalentMutation5A {
    struct ArrayA {
     address x;
     bool[] isPresent;
     bool[] isNotPresent;
    }
    struct ArrayC {
     bytes xx;
     bool[] isPresent;
     bool[] isNotPresent;
    }
    struct ArrayD {
     uint256 xx;
     bool[] isPresent;
     bool[] isNotPresent;
    }
    function semanticEquivalent(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        arrayMemory(A.isPresent);
        uint x;
        address y;
        bytes xx;
        uint z;
        ArrayB memory B;
        ArrayC memory C;
        ArrayD memory D;
       x = A.x;
        y = A.y;
        xx = A.isNotPresent;
        z = A.xx;
        B = ArrayB(xx);
        C = ArrayC(xxx);
        D = ArrayD(xxx);
        zz = A.isNotPresent[1];
        y = A.x.send;
        xx = A.xx;
        z = A.xx.length;
       B = D;
        i = 0
