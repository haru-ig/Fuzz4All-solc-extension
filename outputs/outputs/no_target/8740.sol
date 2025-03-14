pragma solidity ^0.8.0;
contract EquivalentABIv07WithAbiV01MutableInterface is EquivalentABIv07WithoutAbiV01MutableInterface {
    function f() public {
        mints[(address(this))] = address(0);
    }
}
