pragma solidity ^0.8.0;
contract Test
{
    uint[] public array;
    function test() public {
        array[0] += 1234;
        array[1] = (uint128)(uint8)(uint16)(uint32)(uint64)(uint128)(int16)(int32)(int64)(int128).min();
        array[2] = (uint128)(uint8)(uint16)(uint32)(uint64)(uint128)(int16)(int32)(int64)(int128).max();
        array[3] = bool((bool)(uint8)(uint16)(uint32)(uint64)(uint128)(int16)(int32)(int64)(int128).max() |  ~uint8(uint111));
        array[3] = ~uint64(uint111) & uint8(uint111);
        uint[999] memory a;
        a[999] = (uint16)(uint32)(uint64)(uint128)(int16)(int32)(int64)(int128).min();
        a.length = 1;
        a[1][1] = ~uint8(uint111) & uint8(uint111);
        a[1][1] = 0;
        a[999] = a[1][1];
        a[999] = a[1][1];
        a.max = a[1][999];
        uint[99] memory b;
        b.length = 10;
        b[1][1] = uint8(uint111);
        b[1][1] = uint8(uint111);
        b[1][11] = uint8(uint111);
        b.max = b[1][98];
        uint[99] memory c;
        c.length = 10;
        c[1][1] = uint8(uint111);
        c[1][1] = uint8(uint111);
        c[99][1] = uint8(uint111);
        c.max =
