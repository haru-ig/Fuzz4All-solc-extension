pragma solidity ^0.8.0;
contract EquivalentABIv08Abi {
    mapping (address => address) mints;
    function f(address) public {
        mints[(address(this))] = address(this);
    }
}
