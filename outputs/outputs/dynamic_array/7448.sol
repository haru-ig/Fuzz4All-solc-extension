pragma solidity ^0.8.0;
contract Test47e {
    uint[2] private testArray;
    uint[] public mynArray;
    constructor () public {
        mynArray.push(2);
        mynArray.push(1);
        mynArray.push(3);
        mynArray.push(4);
        mynArray.push(5);
    }
    function setArray() public {
        testArray = [1,3,2,5,4,6];
    }
    function test() public {
        testArray[0] = 5;
        testArray[1] = 7;
        testArray[2] = 6;
        testArray[3] = 9;
        testArray[4] = 8;
        testArray[5] = 5;
    }
    function test2() public {
        for(uint i = 0; i < 6; i += 2) {
            testArray[i] = testArray[i]+1;
        }
        for(uint i = 0; i < 6; i += 2) {
            testArray[i] = testArray[i]+2;
        }
        for(uint i = 0; i < 6; i += 2) {
            testArray[i] = testArray[i]+3;
        }
        for(uint i = 0; i < 6; i += 2) {
            testArray[i] = testArray[i]+4;
        }
        for(uint i = 0; i < 6; i += 2) {
            testArray[i] = testArray[i]+5;
        }
        mynArray.push(testArray[12]);
        mynArray.push(testArray[13]);
        mynArray.push(testArray[14]);
        mynArray.push(testArray[15]);
        mynArray.push(testArray[17]);
        mynArray.push(testArray[16]);
    }
}
