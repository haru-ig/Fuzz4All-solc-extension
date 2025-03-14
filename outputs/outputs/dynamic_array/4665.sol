pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedStruct {
    DynamicData[] immutable data;

    struct MutatedData {
        uint data;
        uint256 data2;
        mapping(bytes32 => uint) data3;
    }

    mapping(string => MutatedData) dataStr;
    mapping(uint256 => MutatedData) dataU256;
    mapping(bytes32 => MutatedData) dataBytes;
    mapping(address => MutatedData) dataAddr;
    mapping(uint => MutatedData) dataUint;

    function setStr(string memory s, MutatedData memory m) public {
        dataStr[s] = m;
    }
    function setU256(uint256 u, MutatedData memory m) public {
        dataU256[u] = m;
    }
    function setBytes32(bytes32 bytes, MutatedData memory m) public {
        dataBytes[bytes] = m;
    }
    function setAddr(address addr, MutatedData memory m) public {
        dataAddr[addr] = m;
    }
    function setUint(uint x, MutatedData memory m) public {
        dataUint[x] = m;
    }
    function getStr(string memory s) public view returns (MutatedData memory) {
        return dataStr[s];
    }
    function getU256(uint256 u) public view returns (MutatedData memory) {
        return dataU256[u];
    }
    function getBytes32(bytes32 bytes) public view returns (MutatedData memory) {
        return dataBytes[bytes];
    }
    function getAddr(address addr) public view returns (MutatedData memory) {
        return dataAddr[addr];
    }
    function getUint(uint x) public view returns (MutatedData memory) {
        return dataUint[x];
    }

    function getValues() public view returns (
        bool, uint, string[3] memory, uint256[5] memory, bytes32[2] memory,
        address[2] memory, uint[5] memory, bytes[4] memory
    ) {
        bool b = boolean(data[1].data);
        b = boolean(data[1].data);
        bytes32 c = bytes32(toAddress(data[0].data));
        bytes32 d = bytes32(toAddress(uint256(data[2].data)));
        addr[] memory e = addr[2](addr(1) to addr(3));
        address f = toAddress(uint(data[2].data, 2
