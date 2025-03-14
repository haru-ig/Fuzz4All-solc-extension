pragma solidity ^0.8.0;
library TestLibrary {
    uint8 constant testLib = 1;
}
contract TestLibCall {
    TestLibrary public testLib;
    constructor(TestLibrary testLib_) {
        testLib = testLib_;
    }
    function testTestLib(uint8 x) public {
        uint8 y = testLib.testLib >> 1;
        testLibCall.testLib.testLib = x << (uint32(x) >> 2);
    }
}
