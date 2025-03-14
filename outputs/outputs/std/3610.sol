pragma solidity ^0.8.0;

import 'Array.sol';
contract MutatedArray {
    function MutatedArray() {
        ArrayTest _a = new ArrayTest(5, "hello world", 5);
    }
}

contract ArrayTest{
    Array a;
    uint256 _uint;
    uint256 _uint256;
    uint128 _uint128;
    uint32 _uint32;
    uint _uintArray;
    uint256[] _uintArray256;
    bool[] _intArrayBool;
    bytes32[] _bytesArray;
    address[] _addressArray;
    mapping (uint => mapping (uint256 => uint256)) public mappingOfArrayToSixElements;
    mapping(uint => address) public mappingOfArrayToAddress;
    mapping(uint => int256) public mappingOfArrayToInt256s;
    uint public _maxUint;
    uint public _maxBytes;
    uint public _maxAddress;
    mapping (uint => bool) public mappingOfArrayToHasSixElements;
    address public _owner;

    constructor(uint256 initUint, string memory initString, uint initUint2) {
        a = new Array();
        _uint = initUint;
        _uint256 = initUint2;
        _uint128 = initUint;
        _uint32 = initUint2;
        _uintArray = initUint2;
        _uintArray256 = new uint256[](0);
        for (uint i = 0; i < 4; ++i) {
            _uintArray256.push(_uint256);
            _intArrayBool.push(initUint2 == (uint8)(-1));
            for (uint j = 0; j < 3; ++j) {
                _bytesArray.push(abi.encode(initUint, initString, initUint2));
            }
        }
        for (uint j = 0; j < 1; ++j) {
            _addressArray.push(address(this));
        }
        mappingOfArrayToSixElements[a.maxUint()] = (a.maxUint256(), a.maxBytes256(), a.maxAddress256());
        a._maxUint = a.maxUint();
        mappingOfArrayToAddress[a.maxAddress()] = a.maxUint();
        mappingOfArrayToInt256s[a.maxAddress()] = a.maxAddressInt256();
