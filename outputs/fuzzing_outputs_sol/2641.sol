pragma solidity ^0.8.0;
contract myContract {
    mapping (address => uint) private numberMap;
    mapping (bytes32 => uint) private stringMap;
    mapping (bytes32 => bool) private boolMap;
    mapping (uint => bytes32) private bytesMap;
    mapping (address => uint) private stringNumberMap;
    mapping (uint => uint) private uintNumberMap;
    constructor () {
        numberMap[address(0)] = 0;
        stringMap[bytes32(0)] = 0;
        boolMap[bytes32(0)] = false;
        bytesMap[uint(0)] = bytes32(0);
        stringNumberMap[uint(0)] = uint(0);
        uintNumberMap[uint(0)] = uint(0);
    }
    function getNumber(address a) public view returns(uint) {
        return numberMap[a];
    }
    function getString(bytes32 a) public view returns(bytes32) {
        return stringMap[a];
    }
    function getBool(bytes32 a) public view returns(bool) {
        return boolMap[a];
    }
    function getBytes(uint a) public view returns(bytes32) {
        return bytesMap[a];
    }
    function getStringNumber(uint a) public view returns(bytes32) {
        return toBytes32(a);
    }
    function getUintNumber(uint a) public view returns(uint) {
        return uintNumberMap[a];
    }
    function setNumber(address a, uint b) public {
        numberMap[a] = b;
    }
    function setString(bytes32 a, bytes32 b) public {
        stringMap[a] = b;
    }
    function setBool(bytes32 b, bool c) public {
        boolMap[b] = c;
    }
    function setBytes(uint a, bytes32 b) public {
        bytesMap[a] = b;
    }
    function setStringNumber(uint a, bytes32 b) public {
        stringNumberMap[a] = fromBytes32(b);
    }
    function setUintNumber(uint a, uint b) public {
        uintNumberMap[a] = b;
    }
}
