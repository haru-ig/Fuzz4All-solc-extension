pragma solidity ^0.8.0;
contract OptimizelyExample107{
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    assembly {
        let memSize := 24;
        let x := mload(0x400)
        mstore(0x400, mload(x).add(memSize))
    }
    function myFunction( ) public {
        x = x | 1;
    }
    function test( ) public {
        x = x | x;
    }
    function test_old( ) public {
        x = x + x;
    }
}
contract OptimizelyExample107Real{
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    assembly {
        let memSize := 16;
        let x := mload(0x400)
        mstore(0x400, mload(x).add(memSize))
    }
    function myFunction( ) public {
        x++;
    }
    function test( ) public {
        x++;
        x++;
    }
    function test_old( ) public {
        x = x + x;
    }
}
