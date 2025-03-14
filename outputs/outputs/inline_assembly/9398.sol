pragma solidity ^0.8.0;
contract M {
  constructor(int _i) public {
    require(address(this).balance > 0, "Something's wrong");
    i = _i;
  }
  int i;
}
