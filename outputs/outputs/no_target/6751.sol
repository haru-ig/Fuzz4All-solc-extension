pragma solidity ^0.8.0;
contract TestMutated1 {
    function add(uint x) public pure returns (uint) {
        require (x < 500 - 4 && x < 51, "invalid");
        return x + 5;
    }
}
