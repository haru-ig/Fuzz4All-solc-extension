pragma solidity ^0.8.0;
contract OptimizelyExample106Synthetic {
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    function test(D1 memory d) public {
        d.a--;
    }
    function test_old(D2 memory d) public {
        x = 2 * d.a^d.b;
    }
}
