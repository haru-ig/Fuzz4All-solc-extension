pragma solidity ^0.8.0;
abstract contract AbstractWithArray {
    StructWithArray internal _array;
    function doTest() virtual public {
        _array.array0 = new uint256[](3);
        _array.array1 = new uint256[](2);
        _array.array0[0] = 123;
        _array.array0[1] = 999;
        _array.array0[2] = 259;
        _array.array1 = new uint256[](3);
        _array.array1[0] = 12;
        _array.array1[1] = 459;
        _array.array1[2] = 39;
    }
}
function test() pure public {
    AbstractWithArray instance = new AbstractWithArray();
    instance.doTest();
}
