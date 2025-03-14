pragma solidity ^0.8.0;
contract TestMutated1 {
    function add1(uint x, uint256 y) public pure returns (uint) {
         require (x < 2 && y < 2 && x < 3 && y < 3, "invalid");
        return x - y;
    }
}
contract TestMutated2 {
    function add2(uint x, uint256 y) public pure returns (uint) {
         require (x < 4 && y > 2 && x > 0 && y < 1, "invalid");
        return x + y;
    }
}
