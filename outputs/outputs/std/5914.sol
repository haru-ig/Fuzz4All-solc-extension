pragma solidity ^0.8.0;
contract SemanticEvidentChanges5 {
    uint256 public x, y;
    function getY() public view returns (uint256 y) {
       y = y;
    }
    function getX() public view returns (uint256 x) {
       x = x;
    }
}
