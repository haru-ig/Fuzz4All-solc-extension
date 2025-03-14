pragma solidity ^0.8.0;
contract SolidityAssemblyExample2 {
    uint public _a;
    uint public _b;
    constructor(uint Z) public {
        _a ^= Z;
        _b ^= (Z + 65535) << 8;
        _a ^= _a << 8;
        _b ^= _b << 40;
        _b ^= ((Z & 0xFF) << 8) | ( Z & 0xFF);
        _b ^= (Z >> 8);
        _b ^= (0xFF << (255 - (Z & 0xFF)));
        _b ^= ((Z >> 16) << 8) | (Z & 0xFFFF);
        _b ^= (((_a >> 8) & 0xFF) << 24) | (_c >> 8) |  (_b >> 48));
        _b ^= ( (_a + 1) >> (Z & 0xFF));
        _b ^= (Z & 0xFF);
    }
}
