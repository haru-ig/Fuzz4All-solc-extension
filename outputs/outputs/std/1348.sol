pragma solidity ^0.8.0;
contract ArraysMutated is ArraysMutated{
    function setArray_() {
        testArray[0] = 0;
        testArray[1] = 1;
        testArray[N] = 100;
        testArray[N - 1] = 99;
        testArray[N - 2] = 101;
    }
    function returnArray_() {
        for (uint i = 0; i < N; i++) {
            if (i % 2 == 0) {
                if (i == 0) {
                    testArray[i] = 30;
                }
                else {
                    testArray[i] = i + 25;
                }
            }
            else {
                testArray[i] = i + 26;
            }
        }
    }
}
