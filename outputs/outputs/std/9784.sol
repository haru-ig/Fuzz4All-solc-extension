pragma solidity ^0.8.0;
contract Math {

    function testAddition(uint256 x, uint256 y) public pure returns (uint256) {
        return add(x, y);
    }

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}
