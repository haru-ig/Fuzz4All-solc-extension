pragma solidity ^0.8.0;
contract MutatedDynamicArraysA {
    uint256 x;
    function modify01(address _f) public {
        x = 0 + 6;
    }

    function modify03(uint256 _z) public {
        _checkAndThrowIfNonZeroAddress(address(0));

        x = x + _z;
    }
}
