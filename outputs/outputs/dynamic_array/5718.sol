pragma solidity ^0.8.0;
contract Test90 {
    struct A { uint a; uint b; uint c; }
    struct B { uint a; }
    struct C { uint a; uint b; uint d; }
    struct D { uint a; uint b; uint d; }
    struct E { uint a; }
    struct F { uint a; uint b; uint c; uint d; uint e; }
    struct G { uint aa; uint bb; uint cc; uint d; }
    struct H { uint aa; uint bb; uint cc; uint cc; uint d; }
    struct I { uint a; uint b; uint b; uint b; uint b; }
    struct J { uint a; uint b; uint c; uint b; }
    struct K { uint a; uint b; uint c; uint c; }
    struct L { uint a; uint b; uint c; uint c; uint e; }
    struct M { uint aa; uint aaa; uint bbb; uint ccc; uint ccc; uint dddd; }
    struct N { uint a; uint b; uint ddd; uint eee; uint eee; uint eee; }
    function f(uint a[]) constant returns (uint d) {
        d = a.length > 0? a[0].c : 0;
    }
}
