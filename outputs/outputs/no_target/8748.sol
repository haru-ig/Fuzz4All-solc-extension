pragma solidity ^0.8.0;
contract EquivalentABIv08AbiV01SemanticallyEquivalentInterface {

    mapping (address => address) mints;
    function f() public {

        mints[(address(this))] = address(this);
    }
}
