pragma solidity ^0.8.0;
contract test
{
    s2 public myStruct;
    bytes public bytes;
    uint8 public bytes8;
    uint16 public bytes16;
    uint32 public bytes32;
    uint64 public bytes64;
    bytes8 public bytes80;
    function f(test6 storage myArray) public
    {
        test6 storage newMyStruct = myStruct;
        bytes memory newBytes = bytes;
        bytes80 memory newBytes80 = bytes80;
        myStruct.x = myArray.z[5];
        myStruct.z[5] = 0x0;
        myStruct.y =0x5;
        newMyStruct.y = 0x5000000000000000000000000000000000000000000000000000000000000;
        newMyStruct.z[5] = 0x123;
        newMyStruct.x = 0x50000000000000000000000000000000000000000000000000000000;
        bytes memory newBytes8 = "Hello World".repeat(32);
        bytes80 storage s80 = newBytes80;
        s80.x = 0;
        s80.x = 0x0;
        s80.x = 2**31;
        s80.x = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        bytes16 storage s16 = newBytes16;
        s16.x = 0;
        myStruct.x = s16.x;
        bytes32 memory newBytes32 = new bytes(4);
        myStruct.z[5] = 0x0000010000000000;
        newBytes32[0] = 0;
        myStruct.x = newBytes32;
        newBytes32[3] = byte(1);
    }
}
