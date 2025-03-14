pragma solidity ^0.8.0;

contract MappedStorageExample4 {

    address public owner;
    mapping (uint => uint) private testStorage1;
    mapping (uint => bytes32) private testStorage2;
    mapping (uint => bytes32[]) private testStorage3;
    mapping (uint => uint) private testStorage4;
    mapping (uint => bytes32) private testStorage5;
    mapping (uint => bytes32) private testStorage6;
    mapping (uint => bytes32) private testStorage7;
    mapping (uint => uint) private testStorage8;
    mapping (uint => uint) private testStorage9;


    constructor () {
        owner = msg.sender;
    }

    function setTestStorage1(uint index, uint value) public {
        testStorage1[index] = value;
    }
    function setTestStorage2(uint index, address payable value) public {
        testStorage2[index] = bytes32(uint160(value));
    }
    function setTestStorage3(uint index, bytes32[] memory value) public {
        testStorage3[index] = value;
    }
    function setTestStorage4(uint index, uint value) public {
        testStorage4[index] = value;
    }
    function setTestStorage5(uint index, bytes32 value) public {
        testStorage5[index] = value;
    }
    function setTestStorage6(uint index1, uint index2, bytes32 value) public {
        testStorage6[index1][index2] = value;
    }
    function setTestStorage7(uint index1, uint index2, address payable x) public {
        testStorage7[index1][index2] = bytes32(uint160(x));
    }
    function setTestStorage8(uint index1, uint index2, bytes32[] memory value) public {
        testStorage8[index1][index2] = value;
