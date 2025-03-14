pragma solidity ^0.8.0;
library P12 {
    struct S{uint x;uint y;uint z;}
    function i() pure public returns (S memory) {
        return new S(i(),0,0);
    }

    function j() pure public returns (S memory) {
        return new S(0,i(),0);
    }

    function k(S memory s){S memory d;
        return d=s;}
}
