pragma solidity ^0.8.0;
contract OptimizelyExample3_mutated {
    uint8[] public data;
    bytes[] memory dataBytes;
    mapping(uint256 => bytes6) testMapping;
    bytes6 bytesKey;
    bytes8 bytes8Key;
    mapping(uint => uint8) public data8;
    mapping(uint => bytes8) public dataBytes8;

    mapping(uint => uint8) public dataInt;
    mapping(uint => bytes1) public dataBytes1;
    mapping(uint => bool) public dataBool;
    mapping(uint => byte) public dataByte;
    mapping(uint => int2) public dataInt2;
    mapping(uint => int) public dataInt8;
    mapping(uint => bytes) public dataBytes2;
    mapping(uint => address) public dataAddress;
    mapping(uint => int128) public dataInt128;

    constructor(uint _dataAddress) public {
        dataAddress[_dataAddress] = _dataAddress;
    }

    function deploy() public {
        data[8] = 10;
    }

}
