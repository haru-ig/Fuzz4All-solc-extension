pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public constant y = 60;
    function func() public {
        x = x + x;
        x = x + y + y;
    }
}
