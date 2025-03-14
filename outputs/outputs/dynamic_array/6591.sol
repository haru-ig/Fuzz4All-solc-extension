pragma solidity ^0.8.0;
contract T8ES_2 {
    uint array1[100];
    uint dynamicArray1[100];
    uint i6;
    uint i9;
    uint i14;
    uint i19;
    uint i24;
    uint i29;
    uint i34;
    uint i40;
    uint i46;
    uint i53;
    uint i60;
    uint i67;
    uint i74;
    address i10;
    address i13;
    address i18;


    function setDynamicArrayTest(uint numElements) public returns (uint[] memory) {
        dynamicArray1 = new uint[](numElements);
        for (uint i = 0; i < numElements; i++) {
            dynamicArray1[i] =  i6;
            array1[i] = array1[i]+(i6*2) + (i6*3) + (i6*4) + (i6*5) + (i6*6);
        }
        return dynamicArray1;
    }

    function setDynamicArrayTest2(uint numElements, uint i46) public returns (uint[] memory) {
        dynamicArray1 = new uint[](numElements);
        for (uint i = 0; i < numElements; i++) {
            dynamicArray1[i] =  i6;
            array1[i] = array1[i]+i6+i6*i6+i6*i6*i6+i6*i6*i6*i6+i6*i6*i6*i6*i6+i6*i6*i6*i6*i6*i6+i46;
        }
        return dynamicArray1;
    }

    function test() public {
        i = 52;
        uint256 i14 = 54;
        uint256 i19 = 57;
        uint256 dynamicArray20 = 11;


        for (uint i = 0; i < 10; i++) {
            dynamicArray1[i] = 10 * (i9 + 9) + 40;
        }
