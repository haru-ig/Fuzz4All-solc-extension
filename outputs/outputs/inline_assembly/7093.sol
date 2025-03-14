pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    modifier modify( ) {
        x = 1;
        assert(false);
    }
    function test_( ) public {
        modify();
    }
    function test____( ) public {
        modify();
    }
}
