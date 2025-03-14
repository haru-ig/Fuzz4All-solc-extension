pragma solidity ^0.8.0;
contract TestMutator {
    function set(uint40 x) public {
        x = 10;
        x = -10;
        x = 22;
    }
}
