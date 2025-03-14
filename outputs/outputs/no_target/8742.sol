pragma solidity ^0.8.0;
contract EquivalentABIv07WithoutAbiV01MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        mints[address(this)] = address(this);
    }
}
contract EquivalentABIv07WithoutAbiV03MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        if (address(0) > mints[(address(this))]) {
            mints[(address(this))] = (address(this));
        } else {
            mints[(address(this))] = address(0);
        }
    }
}
contract EquivalentABIv07WithoutAbiV04MutableInterface {
    mapping (address => address) public mints;
    function f() public {
        if (address(0) > mints[(address(this))]) {
            mints[(address(this))] = (address(this));
        } else {
            mints[(address(this))] = address(0);
        }
    }
}
contract EquivalentABIv06WithoutAbiV01ImmutableInterface {
