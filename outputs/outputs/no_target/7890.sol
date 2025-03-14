pragma solidity ^0.8.0;
contract TestMutator5 {
    uint128 value;
    function set() public returns (uint128) {
        value = 1;
        value /= 2;
        return 2;
    }
}
