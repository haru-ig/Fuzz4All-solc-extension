pragma solidity ^0.8.0;
contract OptimizelyExample105bEfficient {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function test0( ) public returns (uint[] memory) {

        (x) = (x);
        return (x);
    }
    function test1( ) public returns (D4 memory, uint[] memory) {
        (x) = (x);
        (x) = (x);
        if (x = (x)){
            return (x);
        }
        return (x);
    }
    function test2( ) public {
        (x) = (x);
        x = x;
        (x) = (x);
    }
    function test3( ) public {
        (x) = (x);
        if (x = (x)){
            return (x);
        }
    }
    function test4( ) public {
        (x) = (x);
        if (x = (x)){
            if (x = (x)){
                return (x);
            }
        }
    }
    function test5( ) public modifies (D2[] storage s) {
        (x) = (x);
        return;
    }
    function test6( ) public {
        (x) = (x);
        if (x = (x)){
            if (x = (x)){

            }
        }
    }
    function test7( ) public modifies (uint[] storage array1, uint[] storage array2) {
    (x) = (x);
    }
    function test8( ) public {
        (x) = (x);
        return;
    }
    function test9( ) public modifies (D2[] storage s) {
        (x) = (x);
        return;
    }
}
