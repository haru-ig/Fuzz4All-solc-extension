pragma solidity ^0.8.0;
contract Test43_DynamicArrayExample {
    dynamic bytes32[] memory D;
    struct MyStruct {
        uint8 S;
        uint16 Int16;
        uint16 Int16BE;
        uint32 Int32;
        uint32 Int32BE;
        uint64 Int64;
        uint64 Int64BE;
        address Address;
        string Data;
        bytes32 Data32;
        bytes32 Data32BE;
        bytes data[10];
    }
    struct DataStruct {
        string Data;
        bytes Dates;
    }

    constructor() public {}

    function push() public {
        MyStruct memory m;
        m.Int32BE = 1;
        m.Int64BE = 1LL;
        m.Int16BE = 1;
        m.Data = "A test string";
        m.Data32BE = keccak256(abi.encodePacked(bytes1(50), bytes1(97), bytes1(96), bytes1(50), bytes1(97), bytes1(96), "Z"));
        m.Address = 0xabcdefabcdefabcdefab;
        m.Uint32BE = 1;
        D.push((bytes32(m)).length);
        D.push((bytes256(m)).length);
        D.push((bytes(m.Data)).length);
        D.push((bytes1[](m.Data[0], m.Data[1], m.Data[2])))[0]);
        D.push((bytes16[](m.Data[0], m.Data[1], m.Data[2], m.Data[3]))[0]);
        D.push((bytes8[](m.Data[0], m.Data[1], m.Data[2], m.Data[3], m.Data[4])), 0, 4);
        D.push(abi.encode(m.D[0]));
        D.push((abi.encodePacked(m.D[0], m.D[1], m.D[2], m.D[3], 1, 2, 3, 4)));
        D.push((abi.encode(m.Data[0])));
        D.push((abi.encodePacked(m.Data[0], m.Data[1], m
