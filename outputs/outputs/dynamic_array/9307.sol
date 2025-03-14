pragma solidity ^0.8.0;


contract Contract {

    uint8[] public myArray;
    uint8 public numElements;



    constructor(uint8[] memory arr, uint8 n) {


        myArray = new uint8[](n);
        numElements = n;
        uint i = 0;
        while(i < n) {
            myArray[i] = arr[i];
            i++;
        }
    }


    function getFirst() public pure returns (uint8) {
        return myArray[0];
    }


    function getNumElements() public pure returns (uint256) {
        return numElements;
    }


    function setFirst(uint8 x) public {
        myArray[0] = x;
    }


    function setLast(uint8 x) public {
        myArray[numElements-1] = x;
    }


    function getElement(uint256 i) public view returns(uint8) {
        return myArray[i];
    }


    function setElement(uint256 i, uint8 x) private {

        myArray[i] = x;
    }


    function arrayContains(uint8 x) public view returns(uint8){
        for (uint i = 0; i <= numElements; i++) {
            if (x == myArray[i]) return 1;
        }
        return 0;
    }


    function arrayContainsAll(uint8[] memory arrayA) public view returns(uint8){
        for (uint i = 0; i < arrayA.length; i++) {
            if (arrayContains(arrayA[i]) == 0) return 0;
        }
        return 1;
    }


    function arrayContains(uint8 x) public view returns(uint8){
        uint i = 0;
        while(i < numElements && x!= myArray[i]) {
