pragma solidity ^0.8.0;
contract P8{
  uint256 internal x = 1;
}

pragma solidity ^0.8.0;
contract P9{
  constructor() { x = x + P7.h() + ~P7.h() + P8.h() + ~P8.h() + 1; }
  uint256 public x;
}
