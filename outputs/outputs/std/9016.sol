pragma solidity ^0.8.0;
contract ExampleClass {
    struct arrayElem { uint value; string comment; }
    uint[] arrayTest;
    uint _arraySize;
    uint arrLen;
    constructor () {
        arrayTest = new uint[](5);
        arrayTest[0] = uint(123475);
        arrayTest[1] = uint(12.385);
        arrayTest[2] = uint(987654320);
        arrLen = arrayTest.length;
        uint[] memory outputArr;
        outputArr = new uint[](arrLen+1);
        outputArr[0] = uint(7);
        for (uint i = 0; i < arrLen; i++) {
            outputArr[i+1] = uint(335540000000000000000000000000000000000) / (i + 1);
        }
        arrayTest = outputArr;
    }
    function getArrAt(uint index) public view returns (uint) {
        if(index > arrLen-1)
            return arrLen-1;
        return arrayTest[index];
    }
    function getMin(uint[2] memory inputArr) public view returns (uint) {
        uint minValue = inputArr[0];
        for (uint i=1; i<inputArr.length; i++) {
            if (inputArr[i] < minValue) minValue = inputArr[i];
        }
        return minValue;
    }
}
