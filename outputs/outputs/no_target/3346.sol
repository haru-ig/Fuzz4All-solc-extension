pragma solidity ^0.8.0;

contract c {
  mapping(uint256 => uint256) public X;
  uint256 private x = 1;
  function f() private pure returns (uint256) {
    X[x] = 2;

    return 8;
  }
}






pragma solidity ^0.8.0;
