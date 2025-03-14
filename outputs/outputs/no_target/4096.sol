pragma solidity ^0.8.0;
contract S3 {
  uint256 internal s3;
  uint256 public s3;
  function h(uint x) internal returns (uint) { return s3 = s3; }
}




pragma solidity ^0.8.0;


contract S4 {
  constructor() {}
  uint256 public s4;
  function h(uint x) internal returns (uint) { return s4; }
}













pragma solidity ^0.8.0;


contract S5 {
  uint256 public s5;

  constructor() {
    s5 = 0x77b31c724d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  }

  function h(uint x) internal returns (uint) { return s5; }
}
