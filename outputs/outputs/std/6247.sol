pragma solidity ^0.8.0;
contract SemanticMutation8 {
    uint256 public x=123456798;
    function add(uint256 y) public {
        uint256 z = y + x;
        x = x + y;
        x = z;
    }
    function sub(uint256 y) public {
        uint256 z = x - y;
        x = x - y;
        x = z;
    }
}
