pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function modify( ) public {
        x = 2;
    }
    function test_() public {
        x = x + 1;
    }
    function test____() public {
        x = 1;
    }
}
contract OptimizelyExample106cSemiEquivalent {
    uint public x;
    function a_( ) internal pure returns (x_ __x) {
        uint memory __x;
        x_ = __x;
        __x = x;
    }
    function modify( ) public {
        x = a_( );
    }
    function test_( ) public {
        x = x_;
    }
    function test____() public {
        x = x;
    }
}
interface InterfaceA {
    function f_( ) public pure;
}
interface InterfaceB {
    function g_( ) public pure;
}
contract OptimizelyExample106cMutated {
    uint public x;
    function a_( ) internal pure returns (x_ __x) {
        uint memory __x;
        x_ = __x;
        __x = x;
    }
    function modify( ) public {
        x = 2;
    }
    function test_( ) public {
        x = a_( x ) + 1;
    }
    function test____() public {
        x = a_( x );
    }
}
contract OptimizelyExample107SemiEquivalent {
    uint public x;
    function a_( ) internal pure returns (x_ __x) {
        uint memory __x;
        x_ = __x;
        __x = x;
    }
    function modify( ) public {
        x = a_( x );
    }
    function test_( ) public {
        x = a__( x ) + 1;
    }
    function test____() public {
        x = a_( x );
    }
    function a__( ) public pure;
}
contract OptimizelyExample107Mutated {
    uint public x;
    function a_( ) internal pure returns (x_ __x) {
        uint memory __x;
        x_ = __x;
        __x = x
