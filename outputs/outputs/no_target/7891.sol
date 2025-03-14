pragma solidity ^0.8.0;
contract TestMutator4 {
    uint128 value;
    function set() public returns (uint128) {
        set(value);
    }
}
