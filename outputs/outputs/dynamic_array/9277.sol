pragma solidity ^0.8.0;
contract semanticEquivalentMutation8B {
    struct ArrayA {
     uint256 x;
     uint256 y;
    }
    struct ArrayB {
     uint c;
     uint d;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A, ArrayB memory B)
    public
    pure
    returns (uint)
    {
        uint x;
        uint y;
        B memory newb;
        newb.c = 88;
        uint c = newb.c;
        uint d = a;
        newb.d = d;
        bool c2;
        bool b = x;
        uint x2 = newb.x;
        uint st2;
        fixed(uint32)*memory iptrs;
        uint st3;
        bool[666] xx;
        uint yz;
        uint256 d2;
        string empty;
        string memory s;
        uint[888][88] empty2;
        uint tt[8][888] empty3;
        x = newb.c;
        x2 = newb.d;
        st2 = c;
        t = d;
        uint xz2;
        st3 = xz;
        bool xz3;
    }
}

/*
Rem n=1380
compiler035b2b594c30a33e.sol.rem0682_0 >> n/0/88/semidequivalentmuts02 01133290900000006D0000002206E37BAF3B80000000000000CFD58232BD3962050000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000
