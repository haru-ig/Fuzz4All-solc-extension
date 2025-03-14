pragma solidity ^0.8.0;
library Library2 {
    function testMethod() public pure returns (uint32) {
        uint32 x;
        assembly {
            x := add(mload(0), 0x00)
        }
        return x;
    }
}
contract TestContract1 {
    function testMethod() public pure returns (uint96) {
        uint96 x;
        x = 0;
        x += Library1.testMethod;
        x += Library2.testMethod;
        return x;
    }
}
contract TestContract2 {
    function testMethod() public pure returns (uint96) {
        uint96 x;
        x = 0;
        x += Library1.testMethod;
        x += Library2.testMethod;
        return x;
    }
}
contract TestContract3 {
    function testMethod() public pure returns (uint96) {
        uint96 x;
        x = 0;
        x += Library1.testMethod;
        x += Library2.testMethod;
        return x;
    }
}
contract TestContract4 {
    function testMethod() public pure returns (uint96) {
        uint96 x;
        x = 0;
        x += Library1.testMethod;
        x += Library2.testMethod;
        return x;
    }
}
contract TestContract5 {
    function testMethod() public pure returns (uint96) {
        uint96 x;
        x = 0;
        x += Library1.testMethod;
        x += Library2.testMethod;
        return x;
    }
}
