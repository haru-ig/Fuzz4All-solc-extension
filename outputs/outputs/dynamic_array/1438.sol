pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicArrayTypeCheck30 {
    struct Foo {
        uint256 _int;
        uint256 _int2;
        uint256 _int3;
        uint256 _int4;
    }

    uint256[2][3] private array1;
    uint256[2][3] private array2;
    uint256[2][3][1] private array3;
    uint256[2][3][] public array4;

    function MutatedFunction() public {
        array1[0][0] = Foo(23, 67, 102, 86);
        array2[0][0] = Foo(24, 28, 37, 32);
        array1[0][1] = Foo(33, 46, 47, 50);
        array2[0][1] = Foo(54, 49, 39, 30);
        array1[0][2] = Foo(42, 27, 32, 19);
        array2[0][2] = Foo(27, 21, 59, 24);
        array3[0][0]['_int'] = 50;
        array1[0][3] = new uint256[](3);
        array2[0][3]['_int3'] = 4;
        array3[0][2][1] = Foo(17, 18, 36, 19);
        array1[1][0] = Foo(20, 53, 30, 51);
        array2[1][0] = Foo(37, 25, 22, 36);
        array3[1][0] = new uint256[](2);
        array1[1][1] = Foo(12, 13, 45, 48);
        array2[1][1] = Foo(55, 21, 13, 49);
        array3[1][1][0] = 18;
        array1[1][2] = Foo(7, 8, 11, 9);
        array3[1][1][1] = new uint256[](3);
        array3[1][1][2][1] = 51;
        array3[1][1][2][0
