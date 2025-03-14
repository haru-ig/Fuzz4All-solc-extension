pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1SemanticallyEquivalentInterface {
    mapping (address => uint) mints;
    constructor() public {
        mints[(address(this))] = uint(uint(uint(uint(uint(uint(uint(uint(uint8(uint160(0x00))))))))))))
    }
}
