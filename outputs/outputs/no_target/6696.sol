pragma solidity ^0.8.0;
contract Mutated {
    function add(bytes32 x) public returns (bool) {
        unchecked {
            int a = 1000;
            int b = a - 1;
        }
    }
}
