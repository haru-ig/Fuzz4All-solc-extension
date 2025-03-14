pragma solidity ^0.8.0;
contract TestMutated660 {
    function add(uint x, uint y) public pure returns (uint, uint) {
        return (1 - x + y - x-y, 2 * y + 1);
    }
}
