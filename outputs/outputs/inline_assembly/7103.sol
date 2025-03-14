pragma solidity ^0.8.0;
contract OptimizelyExample105bSemiEquivalent {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    constructor() public {

        x = 2;
    }
    modifier check1( ) {
        _;
    }
    modifier check2( ) {
        x = x;
    }
    function new_test( ) public {
        mutate( );
        check2( );
        check2( );
    }
}

contract OptimizelyExample105bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    modifier check1( ) {
        _;
    }
    modifier check2( ) {
        x = x;
    }
    function new_check( ) public {
        x = x;
    }
    function new_test( ) public {
        x = x;
        x = x;
        check1( );
        add_pointer(x);
    }
    function add_pointer(address pointer) public {
        D5 storage memory data_in_storage_1 = D5(x);
        D1 storage data_in_storage_2 = D1(data_in_storage_1.array1[data_in_storage_1.array2.length + 1]);
        D4 storage data_in_storage_3 = D4(data_in_storage_2.f[0]);
        data_in_storage_2.a = 0;
        data_in_storage_3.c = 0;
        data_in_storage_2.a = 0; /* This must print 0
