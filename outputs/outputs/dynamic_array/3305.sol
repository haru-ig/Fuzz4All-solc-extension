pragma solidity ^0.8.0;
contract C {
    bytes[] public array;
    mapping(uint256 => uint256) public data1;
    mapping(uint256 => mapping(uint256 => uint256)) public data2;
    mapping(uint256 => mapping(uint256 => bytes)) public data3;
    mapping(uint256 => mapping(bytes4 => bytes)) public data4;
    mapping(uint256 => bytes[]) public data5;
    mapping(uint256 => bytes[128]) public data6;
    mapping(uint256 => bytes[10][5]) public data7;
    mapping(uint256 => bytes[10][10][10][5]) public data8;
