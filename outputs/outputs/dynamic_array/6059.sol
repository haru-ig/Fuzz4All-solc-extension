pragma solidity ^0.8.0;
contract Test30000 {
    address value;
    uint value1;
    address[] value5;
    uint[] value6;
    uint8 value7;
    uint value8;
    uint32 value9;
    uint value10;
    uint[] value12;
    uint8[] value13;
    uint32[] value14;
    uint variable;
    bytes32 private variable2;
    mapping(address => uint) internal variable7;
    bool[] internal variable8;
    bytes32[] internal variable9;

    function Test30000() public {
        value = msg.sender;
        value1 = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        value5 = new address[](4);
        value6 = new uint[](3);
        value7 = 0x12;
        value8 = 0x0A0A0A;
        value9 = 0x451;
        value10 = 0xFFFFFFFFFFFF;
        value12 = new uint[](4);
        value13 = new uint8[](4);
        value14 = new uint32[](4);
        variable = 0x123;
        private variable2 = 0x02000000000020000000
