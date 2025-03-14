pragma solidity ^0.8.0;
contract MutatedAddresses {
    address[] public arrAddress1;
    address[] public arrAddress2;
    mapping (uint => bool) private boolArr;
    mapping(uint => mapping(uint => bool)) private boolArr2;
    mapping(uint => uint[]) private arr1;
    mapping(uint => uint[2]) public arr1_arr;
    mapping(uint => bytes) private bytesArr;
    mapping(uint => bytes[2]) public bytesArr_bytes;
    mapping(uint => bytes32) private bytes32Arr;
    mapping(uint => bytes32[2]) public bytes32Arr_bytes;
    mapping(uint => bytes[20]) public bytes_bytes;
}
