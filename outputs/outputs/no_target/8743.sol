pragma solidity ^0.8.0;
contract EquivalentABIv07WithoutAbiV03MutableInterface {
    mapping (address => address) public mints;
    mapping (address => address) public redeemAddresses;
    uint public startAmount;
    function f() public {
        mints[address(0)] = address(0);
        startAmount = 10;
        uint256 newAmount;
        newAmount = uint256(0) / uint256(startAmount);
    }
}
contract EquivalentABIv07WithoutAbiV04MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        if (address(0) > uint(0) / uint(1000)) {
            mints[(address(this))] = address(this);
        } else {
            mints[(address(this))] = (address(0));
        }
    }
}
contract EquivalentABIv07WithoutAbiV01ImmutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[(address(this))] = (address(this));
