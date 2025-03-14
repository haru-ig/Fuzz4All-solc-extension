pragma solidity ^0.8.0;
contract newY {
    uint256 public x = 123;
    uint256 public y = 60;



    function f() public returns (uint256) {
      assembly {

        x := x + 123

        z := x + x + y
      }
    }
}
