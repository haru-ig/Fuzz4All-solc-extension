pragma solidity ^0.8.0;
contract EquivalentABIv08WithoutAbiV01MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[address(this)] = address(this);
    }
}
