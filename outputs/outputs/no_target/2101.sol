pragma solidity ^0.8.0;
contract ModificationsOld {
  uint256 public a = b + 512;
  uint256 public b;
  constructor(uint256 _b) public {
    b = _b-512;
  }
}
contract NoModificationsOld {
  uint256 public a = b + 512 + 5;
  uint256 public b;
  constructor(uint256 _b) public {
    b = _b-512;
  }
}
