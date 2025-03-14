pragma solidity ^0.8.0;
library Library {
    mapping (uint => IsolateData[]) internal internalArray;
    IsolateData[] private internalArray2;
    function functionCall() internal view returns (uint) {
        uint result = internalFunction();
        return result;
    }


    function internalFunction() internal returns (uint, IsolateData[]) {

        uint[] memory inputData;
        for (uint i = 0; i < 3; i++) {
            inputData[i] = inputData[i] + 1;
        }
        internalArray[1] = inputData;
        internalArray2[0] = internalArray[1];
        internalArray[1] = internalArray[1] + 3;
        internalArray2[1] = internalArray[1];
        internalArray2[2] = internalArray[1] + 333;
        internalArray2[3] = internalArray[1] + 3333;

        IsolateData[] memory returnData;
        returnData[0] = internalArray[1];
        returnData[1] = internalArray[1];
        returnData[2] = internalArray[1] + 333;
        return returnData;
    }
}
