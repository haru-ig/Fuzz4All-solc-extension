pragma solidity ^0.8.0;
contract C9 {
    constructor(uint256 x, uint256 y) {
        uint256[] memory a = new uint256[](100);
    }
    function f(uint256 i, uint256 x, uint256 y) public {
        for(uint256 i = 0 ; i < 1 ; i = 100) {
            y = x * x + 5*y;
        }
    }
}
