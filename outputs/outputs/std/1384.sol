pragma solidity ^0.8.0;
contract ConvertTest {
    uint constant TOLERANCE = 0.01;
    uint[] memory nums;
    address owner;
    event NumWritten(uint);
    event Sum(uint);
    uint public a = 0;
    uint public c = 999;
    uint public value = 555;
    string[] memory data1 = new string[](3);
    bytes32[] memory data2 = new bytes32[](5);
}
