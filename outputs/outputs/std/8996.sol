pragma solidity ^0.8.0;
contract ArrayMutator {
    uint arrSize = 4;
    uint resultSum;
    uint[] public arrayTest;
    constructor() {
        arrayTest = new uint[](arrSize);
    }
    function createArray() public {
        for (uint i=0; i<arrSize; i++) {
            arrayTest[i] = uint(i);
        }
    }
    function returnArr() public view returns (uint[2] memory) {
        return arrayTest;
    }
    function copyArrTest() public view returns (uint[2] memory) {
        return arrayTest;
    }
    function modifyArr() public {
        for (uint i=0; i<arrSize; i++) {
          arrayTest[i] = uint(i^2);
        }
    }
    function addArrWithResult() public {
        uint[] memory arrs = new uint[](arrSize);
        for (uint i=0; i< arrSize-1; i++) {
            arrs[i] = uint(i);
        }
        resultSum = uint(1);
        for (uint i=0; i< arrSize-1; i++) {
            resultSum += arrayTest[i];
        }
        arrayTest[arrSize-1] += uint(1);
        for (uint i=0; i<arrSize-1; i++) {
            arrayTest[i] += arrs[i];
        }
    }
    function addArrWithZero() public {
        uint resultSum = uint(1);
        for (uint i=0; i<arrSize; i++) {
            resultSum += arrayTest[i];
        }
        arrayTest[arrSize-1] += uint(1);
    }
}
