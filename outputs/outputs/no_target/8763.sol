pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1SemanticallyEquivalentInterface {
    mapping (address => address) mints;
    constructor() public {
        uint160 y;
        mints[(address(this))] = address(this);
        mints[(address(this))] = (address(this));
        mints[(address(this))] = (uint(1));
        mints[(address(this))] = (uint160(1));
        mints[(address(this))] = (uint8(1));
        mints[(address(this))] = (uint(uint160(1)));
        mints[(address(this))] = (uint(uint8(1)));
        mints[(address(this))] = (uint(uint64(1)));
        y = 0xFEAD;
        mints[(address(this))] = (address(this));
    }
}
