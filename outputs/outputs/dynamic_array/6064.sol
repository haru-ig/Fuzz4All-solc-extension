pragma solidity ^0.8.0;
contract Test30142Mutated {
    bytes16[] internal _dummy;
    bytes16 _dummy_2;
    bytes16[5] data;
    constructor () public {
        _dummy_2 = bytes16(0xA4);
        data[0] = _dummy_2;
        data[3] = bytes16(0xA4);
        data[4] = bytes16(0xA4);
        data[7] = bytes16(0xA4);
        bytes16[5] memory tmp;
        tmp[0] = bytes16(0xA4);
        tmp[3] = bytes16(0xA4);
        tmp[4] = bytes16(0xA4);
        tmp[7] = bytes16(0xA4);
        emit dummyEvent(bytes16(0xA4));
        emit dummyEvent(bytes16(0xA4));
        _dummy[_dummy.length] = bytes16(0xA4);
        _dummy[_dummy.length] = bytes16(0xA4);
        _dummy[0] = bytes16(0xA4);
        data[0] = tmp[0];
        data[2] = tmp[1];
        data[3] = tmp[2];
        data[5] = tmp[3];
        data[1] = tmp[4];
        data[4
