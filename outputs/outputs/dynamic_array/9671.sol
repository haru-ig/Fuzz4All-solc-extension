pragma solidity ^0.8.0;
contract Main {
    uint8[][] nonInline1;
    uint8[][] nonInline2;
    uint8[][] internal1;
    uint8[][] internal2;
    uint8[][][] public testArr;
    uint8[][][] internal testInternalArr;
    uint8[][][] public testPublicArr;
    uint8[][][] internal testInternalPublicArr;
    uint8[][][] public testPublicPublicArr;
    uint8[][][] internal testInternalPublicPublicArr;
    function func() public {
        uint8[][][] memory arr = new uint8[2][1][65536];
        uint8[][][] public memory arrPublic = new uint8[2][1][65536];
        uint8[][][] internal memory arrInternal = new uint8[2][1][65536];
        testArr[0] = arr;
        testArr[1] = arrPublic;
        testArr[2] = arrInternal;
        testPublicArr[0] = arrPublic;
        testInternalArr[0] = arrInternal;
        testPublicPublicArr[0] = arrPublic;
        testInternalPublicArr[0] = arrInternal;
        uint8[][][] memory arr2 = arr;
        uint8[][][] memory arrPublic2 = arrPublic;
        uint8[][][] memory arrInternal2 = arrInternal;
        uint8[][][] memory arr2Public = arrPublic;
        uint8[][][] memory arr2Internal = arrInternal;
        uint8[][][] memory arr2PublicPublic = arrPublic;
        uint8[][][] memory arr2InternalPublic = arrInternal;
        uint8[][][] public memory arrPublic2Public = arrPublic;
        uint8[][][] public memory arrPublic2Internal = arrInternal;
        uint8[][][] internal memory arrInternal2Public = arrPublic;
        uint8[][][] internal memory arrInternal2Internal = arrInternal;


        nonInline1[13] = arr;
        nonInlinePublic1[13] = arrPublic;
        nonInline2[13] = arr;
        nonInline2Public1[13] = arrPublic;
        internal1[13] = arr;
        internalPublic1[13] = arrPublic;
        internal2[13] = arr;
        internal2Public1[13] = arrPublic;
        uint8[][] arr2 = arr;
        uint8[][] arr2Public = arrPublic;
        uint8[][] arr2Internal = arrInternal;
        uint8[][]
