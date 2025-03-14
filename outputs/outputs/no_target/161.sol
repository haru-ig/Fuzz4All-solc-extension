pragma solidity ^0.8.0;
contract Test {
    uint256 public x;
    uint public y;
    uint public z;
    function f() public {
        x = 2;
        y = 3;
        z = y;
    }
}
