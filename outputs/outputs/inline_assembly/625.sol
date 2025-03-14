pragma solidity ^0.8.0;
library MyLib {
    struct TestStruct {
        uint number;
        bytes32 binary;
    }
    function testMethod(TestStruct memory s) public pure {}
    function testMethod(uint _number, TestStruct memory s) public pure {}
    function testMethod(uint _number) public pure {}
    function testMethod(uint _number, bytes32 memory b) public pure {}
    function testMethod(bytes memory b) public pure {}
    function testMethod(bytes32 memory b, TestStruct memory s) public pure {}
    function testMethod(TestStruct memory s) public pure {}
    function testMethod() public pure {}
}
contract Mut {
    function testMethod() public pure {}
    function testMethod(uint _number, uint _number2) public pure {}
    function testMethod(uint _number) public pure {}
    function testMethod(uint _number, bytes32 memory _binary) public pure {}
    function testMethod(bytes32 memory _binary, uint _number, bytes32 memory _binary2) public pure {}
    function testMethod(uint _number, bytes32 memory _binary) public pure {}
    function testMethod(uint _number, uint _number2) public pure {}
    function testMethod(uint _number, bytes32 memory _binary) public pure {}
    function testMethod(uint _number) public pure {}
    function testMethod(uint _number, bytes32 memory _binary) public pure {}
    function testMethod(uint _number, bytes32 memory _binary, bytes32 memory _binary2) public pure {}
    function testMethod() public pure {}
}
contract Inter {
    function testMethod() public pure {}
    function testMethod(TestStruct memory s) public pure {}
    function testMethod(uint number, bytes32 binary) public pure {}
    function testMethod(uint number, bytes32 binary, TestStruct memory s) public pure {}
    function testMethod(uint number, bytes32 binary) public pure {}
    function testMethod(uint number) public pure {}
    function testMethod(uint number, TestStruct memory s) public pure {}
    function testMethod(uint number, bytes32 binary, TestStruct memory s) public pure {}
    function testMethod(uint number, TestStruct memory s) public pure {}
    function testMethod(uint number, bytes32 binary) public pure {}
    function testMethod(uint number) public pure {}
    function testMethod(uint number, TestStruct memory s) public pure {}
    function testMethod() public pure {}
}
contract Intra
