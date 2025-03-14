pragma solidity ^0.8.0;
contract c {
  function get() public returns (uint256[4]) { return (uint256[4](), uint256[6](), uint256[3](), uint256[0]());}
  function set(uint256[6][5][3][2] memory d) public {
    d[0][0][0][2][0] = 1;
    d[0][1][0][2][0] = 2;
    d[0][0][0][3][2] = 3;
    d[0][1][0][1][0] = 4;
  }
}
