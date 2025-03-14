pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function test_( ) public {
        x = x;
        x += 1;
        x -= 32;
        x*= 32;
        x /= 32;
    }
    function test____( ) public {
        D6 d0 = D6(x);
        D6 d1 = D6(1);
        D6[] memory d2 = new D6[](2);
        D6[] memory d3 = new D6[](3);
        d2[0] = D6(x + 4);
        d2[1] = D6(x);
        for(uint i; i < 254; i++){
            x = 0;
            x = x;
            x = x* 5 + 6;
        }
        for( uint i; i< 255; i++) {
            x = 41;
            x = x + 82;
            x = x - 78;
        }
        for( uint256 i; i< 9223372036854775807; i++) {
            x = 4;
            x -= 5;
            x *= 4;
            x /= 5;
            x += 2;
            x -= 3;
        }
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample105bCopy {
    uint8 public x;

    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }

    function modify_( ) public {
        x = 1;
    }
    function test_() public {
        x = x;
        x += 1;
        x -= 32;
        x*= 32;
        x /= 32;
