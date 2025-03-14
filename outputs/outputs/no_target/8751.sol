pragma solidity ^0.8.0;
contract EquivalentABIv2AbiV2SemanticallyEquivalentInterface {
    mapping (address => address) mints;
    function f() public {
        mints[(address(this))] = address(this);
    }
}
