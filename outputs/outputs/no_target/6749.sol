pragma solidity ^0.8.0;
contract TestMutated2 {
    function add(uint x, uint y) public pure returns (uint) {
        require (x < 500 - 4 && y < 500 - 4 && x < 51, "invalid");
        return x + y + 5;
    }
}
