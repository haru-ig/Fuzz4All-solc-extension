pragma solidity ^0.8.0;
contract Contract21 is Interface60{
    bytes32 constant contractHash = 'Contract_v2';
    bytes32 constant functionHash = 'function_v1_contractHash';
    uint constant functionArgumentsLength = 1;
    bytes4 constant functionAbi = 0x17800380;
    mapping(uint => string) data;
    uint dataLength;
    function() payable external {}
    uint constant functionDataSize = 0x01;
    mapping(uint => uint) dataBuffer;
    uint dataBufferLength;
    bytes4 internal _functionAbi;
    bytes32 internal _functionHash;
    address internal _address;
    bytes internal _data;
    bytes4 internal _functionReturnValue;
    uint256 internal _dataOffset;

    event log1(uint x);

    constructor(address addr) {
        _address = addr;
        _dataOffset = 0;
        _functionReturnValue = 0x12345678;
    }

    function executeFunction(){
        if (msg.data.length <= functionDataSize) {
            uint length = msg.data.length;
            string memory dataStr = new string(uint256(length));
            assembly {
                dataStr := mload(add(msg.data, 0x20))
            }
            data[0] = dataStr;
            data[1] ='solid';
        } else if (msg.data.length > 0 && msg.data.length <= functionArgumentsLength + functionDataSize) {
            uint length = msg.data.length;
            string memory dataStr = new string(uint256(length - functionDataSize));
            assembly {
                dataStr := mload(add(msg.data, 0x20));
            }
            data[0] = dataStr;
            uint dataOffset = uint(bytes(dataStr) - bytes(data));
            assembly {
                let dataBuffer := mload(add(data, add(0x40, dataOffset)))
                mstore(0x3000, add(dataBuffer, dataOffset))
                dataLength := add(data
