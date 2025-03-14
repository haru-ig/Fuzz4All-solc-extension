pragma solidity ^0.8.0;
contract SemanticallyEquivalentDynamicallySizedArrayAssignment_3 {
    uint56[] public array1;
    uint8[] public array2;
    uint24[] public array3;
    uint24[] public array4;
    constructor() public {
        array1 = new uint24[](5);
        array1[0] = 1;
        array1[1] = 2;
        array1[2] = 3;
        array1[3] = 4;
        array1[4] = 5;
        array2 = new uint8[](5);
        array2[0] = 1;
        array2[1] = 2;
        array2[2] = 3;
        array2[3] = 4;
        array2[4] = 5;
        array3 = new uint56[](8);
        array3[0] = 1;
        array3[1] = 0xffffffffffffffff;
        array3[2] = 0xffffffffffffffff;
        array3[3] = 0xffffffffffffffff;
        array3[4] = 0xffffffffffffffff;
        array3[5] = -3;
        array3[6] = 952922560000;
        array3[7] = 952922560000;
        array4 = new uint24[](3);
        array4[0] = 95292256000000000000000000000000;
        array4[1] = 1;
        array4[2] = 1;
    }
}
