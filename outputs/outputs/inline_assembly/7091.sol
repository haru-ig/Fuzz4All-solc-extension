pragma solidity ^0.8.0;
contract OptimizelyExample105b {
    bytes32 constant x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }

    function modify( ) public {
        x = bytes32(0);
    }
    function test_( ) public {
        x = x.add(bytes32(0));
    }
    function test____( ) public {
        x = x.add(bytes32(0));
    }
}
