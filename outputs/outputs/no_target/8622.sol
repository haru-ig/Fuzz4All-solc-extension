pragma solidity ^0.8.0;
contract Mutated {
    function mod(uint256 x, uint256 y) public view returns (uint256) {
        return (y + (x / (10 ** y % 10))) % 10;
    }
}
