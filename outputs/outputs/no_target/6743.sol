pragma solidity ^0.8.0;

contract TestMutated {
    function add(uint x, uint y) public pure returns (uint) {
        require (x < 500 && y < 500, "invalid");
        return x + y * 2;
    }
}
