pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function mutate( ) public {
        x += 2;
    }
    function test_old( ) public {
        x += 2;
    }
    function test___old( ) public {
        x += 2;
    }
}
contract OptimizelyExample105bNonEquivalent {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function mutate( ) public {
        x = 2;
    }
    function test_old( ) public {
        x = x - 2;
    }
    function test___old( ) public {
        x = x - 2;
    }
}
contract OptimizelyExample105bNonMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function mutate( ) public {
        x = 2;
    }
    function test_old( ) public {
        x = x + 2;
    }
    function test___old( ) public {
        x = x + 2;
    }
}
contract OptimizelyExample105b {
    OptimizelyExample105bSemiEquivalent semiEquivalent = new OptimizelyExample105bSemiEquivalent;
    OptimizelyExample105bMutated mutated = new OptimizelyExample105bMutated;
    OptimizelyExample105bNonEquivalent nonEquivalent = new OptimizelyExample105bNonEquivalent;
    OptimizelyExample105bNonMutated nonMutated = new OptimizelyExample105bNonMutated;
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint
