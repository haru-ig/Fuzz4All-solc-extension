pragma solidity ^0.8.0;
contract Mutated {
    function sum(uint256 a, uint256 b) public pure returns(uint256) {
        return (a + b) % 10;
    }
}
