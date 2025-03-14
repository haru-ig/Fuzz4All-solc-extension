pragma solidity ^0.8.0;
contract Mutator {
    uint value;
    function mutator(uint value_new) external {
            value = value_new;
    }
}
