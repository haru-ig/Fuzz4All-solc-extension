pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck19 {
    uint256[][] array1_a;
    uint256[][][] array1_b;
    constructor () public {
        array1_a = new uint256[10][][];
        array1_a = new uint256[22]];
        array1_b = array1_a;
        array1_b = new uint256[4][];
        array1_b = new uint256[4][4][];
        array1_b[0] = new uint256[22];
        array1_b[1] = new uint256[4][];
        array1_b[2] = new uint256[4][4][];
        array1_b[3] = array1_b[2];

    }
}

pragma solidity ^0.8.0;
contract SemanticsUnequivalentDynamicArrayTypeCheck20 {
    uint256[][] public array1;
    uint256[][]? array2;
    uint256[][][][] array3;
    uint256[][][][]? array4;
    uint256[][][][34] array5;
    uint256[][][][10] array6;
    uint256[][][][][22] array7;
    uint256[][][][][22] array8;
    uint256[][][][][22] array9;
    uint256[][][][][][] array10;
    uint256[][][][][][][][] array11;
    uint256[][][][][][][][][][] array12;
    uint256[][][][][][][][][][][] array13;
    uint256[][][][][][][][][][][][] array14;
    uint256[][][][][][][][][][][][][][] array15;
    constructor() public {
        for (uint i = 0; i < 1601; i++) {
            array1 = new uint256[10][9];
            array2 = new uint256[10][9];


            array5 = array3;
            array6 = array7;
            array7 = new uint256[10
