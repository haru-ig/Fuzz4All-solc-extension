pragma solidity ^0.8.0;
contract OptimizelyExample105b {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    struct D6 {
        function mutated( ) pure public returns ( ) {
            x = x;
        }
        function mutated_old( ) pure public returns ( ) {
            x = x;
        }
    }
    function test___old( ) public {
        D6 d6_2;
        d6_2.mutated_old();
        d6_2.mutated( ) ;
    }
    function test___mutated( ) public {
        D6 d6_1;
        d6_1.mutated( ) ;
        d6_1.mutated_old( );
    }
}
