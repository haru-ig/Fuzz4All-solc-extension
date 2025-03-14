pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_rewritten7{
    struct Foo{
        Foo(){
        }
        function update(uint a) public {
            a = 55;
        }
        bool operator==(Foo memory f) public pure returns (bool){
            return a == f.a;
        }
    }
    function foo1(Foo memory f) public {
        f.update(1);*/

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_rewritten8{
    uint i;
    uint j;
    uint k;
    uint m;
    uint n;
    uint o;
    uint p;
    uint q;
    uint r;
    uint s;
    uint t;
    uint u;
    uint v;
    uint w;
    uint x;
    uint y;
    uint z;

    constructor() public {
        i = 6;
        j = 7;
        k = 8;
        l = 9;
        m = 10;
        n = 11;
        o = 12;
        p = 13;
        q = 14;
        r = 15;
        s = 16;
        t = 17;
        u = 18;
        v = 19;
        w = 20;
        x = 21;
        y = 22;
        z = 23;
        a();
    }

    function foo1() public {

        v = 55;

        a();
    }

    function a() public {
        x = v + 10;
        a();
    }


    function aa() public {
        a();
        a();

        x = x + 1;
    }


    function ab() public {
        a();
        a();
    }

    bool flag=false;
    uint k1=10;
    uint k2=20;
    function abaaab() public {
        aaa();
        aax();
    }
    function aaa() public {
    uint e;
        e+=(1);
    }

    function aax() public {
        uint m1;
        m1+=1;
    }

    uint qo;
    function aaxo(uint a,uint b,uint oo1) public{
        qo=oo1;
        aax();
        aax();
    }

    uint xo;
    function aaxx
