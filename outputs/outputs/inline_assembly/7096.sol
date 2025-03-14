pragma solidity ^0.8.0;
contract OptimizelyExample106aSemiEquivalent {
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function modify( ) public {
        D1 memory iF = D1(1);
    }
    function test_() public {
        D1 memory iF = D1(1);
    }
    function test____() public {
        D2 memory iF;
        iF.a = iF;
    }
}
