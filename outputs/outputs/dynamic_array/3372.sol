pragma solidity ^0.8.0;
library TestLib {
    event Log(uint);
    uint[] dataList;
    event LogEmpty();
    bytes32[] dataList2;
    event LogBytes32();
    bytes8[] dataList3;
    event LogBytes8();
     uint[0] array0;
     uint[] array1;
     uint[0][] arrays0;
     uint[0][] arrays1;
     uint[0] memory array2;
     uint[] memory array3;
     uint[0] memory[] arrays2;
     uint[0] memory[] arrays3;
     uint[0][] arrayss0;
     uint[0][] arrayss1;
}
contract Mixed {
    uint128 u128;
    uint8 u8;
    bool b;
}
contract Mixed16 {
    uint8 u8;
    uint16 u16;
    bool b;
}
contract Mixed169 {
    uint16 u16;
    bool u8;
    bool b;
}
contract Mixed3 {
        bool b;
    uint128[0] memory array0;
    uint128[0] arr;
    uint8[0] memory array1;
    uint128  i128;
    uint8  i8;
    uint16  i16;
    bool i2;
}
contract Mixed8 {
        bool b;
    uint128[0] memory array0;
    uint128[0] arr;
    uint8[0] memory array1;
    uint128  i128;
    uint128  i1282;
    uint8  i8;
    uint32  i32;
    uint8  i_b;
    uint16  i16;
    bool i2;
}
contract Mixed9 {
        bool b;
    uint128[0] memory array0;
    uint128[0] arr;
    uint8[0] memory array1;
    uint256  i256;
    uint32  i32;
    uint8[0] memory array2;
    uint128  i128;
    uint8[0] memory array3;
    uint128  i1282;
    uint8  i8;
    uint32  i324;
    uint32  i3222;
    uint8  i_b;
    uint16  i16;
    bool i2;
}
