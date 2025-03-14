pragma solidity ^0.8.0;
contract SecondVersionAbiV01 {
    mapping (address => address) mints;
    function f() public {
        mints[(address(this))] = address(this);
    }
}
