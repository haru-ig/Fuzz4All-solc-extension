pragma solidity ^0.8.0;
contract ExampleClass {
    uint mInput1;
    uint mInput2;
    uint tempValue;
    uint[2] memory mResult1;
    uint[5] memory mResult2;
    constructor() public {
        mResult1[0] = mInput1;
        mResult1[1] = mInput2;
        tempValue = 1;
        uint count = 1;
        while (tempValue!= 0) {
            mResult2[count] = mInput1;
            mResult2[count+1] = mInput2;
            mInput1 = mInput1 + mInput2;
            mInput2 = mResult1[0];
            uint result = mResult1[1] + mResult2[2];
            mResult1[0] = mInput1;
            mResult1[1] = mInput2;
            tempValue = result;
            count += 2;
        }
    }
    function getSubVal(uint[5] memory inputArr) public view returns (uint) {
        uint tempInput;
        uint tempOutput;
        uint subVal = 0;
        for (uint i=0; i<inputArr.length; i++) {
            if (i == 0) {
                tempInput = inputArr[i];
                subVal += tempInput;
                return subVal;
            } else {
                tempInput = inputArr[i] - mResult2[0];
                subVal += tempInput;
            }
        }
        return subVal;
    }
    function getResult1(uint[] memory inputArr1, uint[] memory inputArr2) public view returns (uint
