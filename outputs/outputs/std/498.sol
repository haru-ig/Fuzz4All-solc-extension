pragma solidity ^0.8.0;
contract test {
    bytes32[] testBytes;
    bytes32 testBytes1;
    bytes32 testBytes2;
    bytes32 testBytes3;
    constructor (bytes32 x1, bytes32 x2) {
        testBytes.push(x1);
        testBytes.push(x2);
        testBytes1 = x1;
        testBytes2 = x2;
        testBytes3 = x1 + x2;
    }
    function getTest() public view returns (bytes32[]) {
        return testBytes;
    }
    function getTest1() public view returns (bytes32) {
        return testBytes1;
    }
    function getTest2() public view returns (bytes32) {
        return testBytes2;
    }
    function getTest3() public view returns (bytes32) {
        return testBytes3;
    }
}
