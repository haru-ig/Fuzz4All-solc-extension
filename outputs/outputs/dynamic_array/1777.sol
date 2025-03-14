pragma solidity ^0.8.0;
contract DerivedDynamicArraysWithInnerDynamicArrays {
    uint256[] public nonStaticArray;
    uint256[] public nonStaticArrayNonMutated;
    uint256[][][] public nonStaticArray2D;
    uint256[][][] public nonStaticArray2DMutated;
    uint256[][] public nonStaticArray3D;
    uint256[][] public nonStaticArray3DMutated;
    constructor() public {
        nonStaticArray = new uint256[](2);
        nonStaticArray.push(0);
        nonStaticArrayAdd(0);
        nonStaticArray2D = new uint256[3][];
        nonStaticArray2D[0] = new uint256[](3);
        nonStaticArray2D[0][0] = 0;
        nonStaticArray2D[0][1] = 0;
        nonStaticArray2D[0][2] = 0;
        nonStaticArray2DMutated = new uint256[3][];
        nonStaticArray2DMutated[0] = new uint256[](3);
        nonStaticArray2DMutated[0][0] = 0;
        nonStaticArray2DMutated[0][1] = 0;
        nonStaticArray2DMutated[0][2] = 0;
        nonStaticArray2DMutated.push(0x00);
        nonStaticArray3D = new uint256[4][]: 1;
        nonStaticArray3D[0] = new uint256[](4);
        nonStaticArray3D[0][0] = 0;
        nonStatic
