pragma solidity ^0.8.0;
contract NewMutator {
    function set(uint40 x) public {
        uint256 x2 = 1;
        x = x2;
    }
}
contract Test {
    function set(uint40 x) public {
        uint256 x2 = 2147483648;
    }
}
