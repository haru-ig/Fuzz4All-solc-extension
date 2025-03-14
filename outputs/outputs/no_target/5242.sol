pragma solidity ^0.8.0;
contract SimpleExample22{
    constructor() public {
        num = 1 >> ( bool(uint8(uint256(uint160(0x100)))))? 1 : ( bool(uint8(uint256(uint160(0x6667)))))? 1 : uint256(uint160(0x6667)) >> bool(uint8((uint256(uint160(0x6667))))) );
        num = uint256(bool(uint8(uint160(0x100))))? 1 : uint160(0xFFFF) >> num;
        num = uint256(bool(uint8(uint160(0x100)))) || bool(uint8(uint160(0xFFFF))));
        num = uint256(uint160(0x100)) >> bool(uint8(uint160(0x100))));
        num = uint256(uint160(false)) >> ( bool(uint8(uint256(uint160(0x100)))))? 1 : num);
        num = uint256(uint8(uint160(0x100)) + bool(uint8(uint160(0x100)))) || uint8(uint256(uint160(0x100))));
        num = uint256(bool(uint8(uint160(0x100))) && uint160(0xFFFF) << 1 | uint256(uint160(0x100)) << 31 ));
        num = (bool((uint160(true) | uint256(uint160(0x100)))) | uint8(uint160(0x100))) << 1);
        num = (uint8(uint160(0xFFFF)) >> uint256(uint160(0x100)));
        num = uint256(uint160(3 << bool(uint8(uint160(0x100))))) >> ( bool(uint8(uint160(0x100)))) >> (bool(uint8(uint256(uint160(0
