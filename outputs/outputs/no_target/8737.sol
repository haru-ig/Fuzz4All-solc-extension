pragma solidity ^0.8.0;
contract EquivalentABIv08WithMutableInterface {
    struct Struct {
        address data;
    }
    function f() public {
        Struct memory newMint;
        newMint.data = address(this);
        mints[newMint.data] = address(this);
    }
}
