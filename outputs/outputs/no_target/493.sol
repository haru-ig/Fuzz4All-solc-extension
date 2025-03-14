pragma solidity ^0.8.0;
library Solidity  {
    uint256 private a_;
    uint256 public y;
    function f() public pure {
        y = a_;
    }
}
