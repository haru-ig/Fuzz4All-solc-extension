pragma solidity ^0.8.0;
contract OptimizelyExample106b {
    address payable contractAdmin = msg.sender;
    uint x;
    uint256 constant constantTwo = 0x21000;
    function test___old( ) public {
        x = x;
    }
    function test___old_old( ) public {
        x = x;
    }
}
contract OptimizelyExample107bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function test___mutated_old( ) public {
        x = x;
    }
}
