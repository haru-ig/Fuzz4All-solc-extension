pragma solidity ^0.8.0;
contract Mutated {
    function f(uint256 x) public returns (uint256 y) {
        return x * 5 + 50;
    }
}
