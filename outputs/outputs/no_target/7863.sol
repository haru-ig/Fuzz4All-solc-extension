pragma solidity ^0.8.0;
contract TestMutator {
    function set(uint40 x) public {
        x <= 1;
    }
}

contract TestMutator {
    function set(uint40 x) public {
        unchecked {
            x == 1 / 1;
        }
    }
}
