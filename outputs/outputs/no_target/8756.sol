pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV1SemanticallyEquivalentInterface {
    mapping (address => address) mints;
    constructor() public {
        mints[(address(this))] = address(this);
        mints[address(this)] = (address(this));
    }
}
