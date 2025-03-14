pragma solidity ^0.8.0;
contract Arrays5 {
    bytes16[] public a1;
}

contract ArraySizeTests {
    uint8 maxSize;
    function verifyArraySizeFields(uint8 len[]) public nonpayable returns (uint8[] memory) {
        for (uint8 i; i < len.length; i++) {
            require(len[i] >= maxSize, "Len too big");
        }
        maxSize = 64;
        return len;
    }

    function testMaxSizeWithNestedStruct() public {
        bytes[2][8] testStruct = [
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 1, 0, 0, 0, 0, 0]
        ];
    }

    function testMaxSizeWithNestedArray() public {
        bytes[8][2] testStruct = [
            [0, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 1, 0, 0, 0, 0, 0],
            [0, 0, 0, 1, 0, 0, 0, 0],
            [0, 0, 1, 0, 1, 0, 0, 0],
            [0, 1, 0, 0, 0, 1, 0, 0],
            [1, 0, 0, 1, 0, 0, 1, 0],
            [0, 0, 0, 0, 0, 1, 0, 0]
        ];

        bytes[2] memory testInput = testStruct.length1.length2;
        bytes16[2] memory testLen = verifyArraySizeFields(testInput.length1.length2);


        require(testStruct.length1.length2.length == testLen, "Incorrect number of elements in testStruct");

        bytes16[2] memory testExpectedLen = [testLen.length1, testLen.length2];


        require(testLen == testExpectedLen, "Incorrect length in testResult");
    }
}


contract Arrays6 {
    bytes32[4] public a1;
