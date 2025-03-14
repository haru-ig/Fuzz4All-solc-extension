pragma solidity ^0.8.0;
contract Mixed
{
    uint8 x;
    uint8 y;
    uint8 arrayInContract;
    uint8[0] memory arrayInContract2;
    uint8 constant arrayIndexTestConstant = 255;
    uint8 constant arrayIndexTestConstant2 = 248;
    uint8 constant arrayIndexTestConstant3 = 253;
    uint8 constant arrayOutOfBoundsIndex = 68;
    uint8 constant constantOutOfRangeIndex = 66;

    uint8 constant arrayWithSizeTooLarge = 64000;
}
