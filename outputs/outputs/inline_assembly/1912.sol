pragma solidity ^0.8.0;

contract newZ {
    uint256 public x = 123;
    uint256 public constant y = 777;
    mapping (uint256 => uint256) public z;

    function func() public {
      uint256 zz;
      while (zz == 777) {
        z[x]++;
      }
    }
}
