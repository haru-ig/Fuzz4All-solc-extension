pragma solidity ^0.8.0;
contract Semantic {
    uint256 public x = 0, y;
    function f() public {
        x = 0;
        x = 0;
    }
}
