pragma solidity ^0.8.0;
contract ImmutableAndMutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function _mutable() internal pure returns (uint) {
        return 20;
    }
    uint immutable immutableBalance;
    uint immutable mutableBalance;
    function immutableBalance() public view returns (uint) {
        immutableBalance = _immutable();
        return immutableBalance;
    }
    function mutableBalance() public view returns (uint) {
        mutableBalance = _mutable();
        return mutableBalance;
    }
}
contract ImmutableAndMutableAndDryRun {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    function _mutable() internal pure returns (uint) {
        return 20;
    }
    uint immutable immutableBalance;
    uint immutable mutableBalance;
    uint immutable dryRunBalance;
    function immutableBalance() public view returns (uint) {
        immutableBalance = _immutable();
        return immutableBalance;
    }
    function mutableBalance() public view returns (uint) {
        mutableBalance = _mutable();
        return mutableBalance;
    }
    function dryRunBalance() public view returns (uint) {
        dryRunBalance = _immutable();
        return dryRunBalance;
    }
}
