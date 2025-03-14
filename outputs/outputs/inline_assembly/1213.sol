pragma solidity ^0.8.0;
contract BetterProgramV1{
  bytes32 constant X = '0';
  bytes32 private x;
  struct A {
    uint a;
  }
  constructor() public {
    x = 0;
  }
  bool public set;
  function notSet() public
  {
    set = false;
  }
  modifier ifSet{
    require(set, 'Not executed.');
    _;
    set = false;
  }
  function modify() public ifSet
  {
    x ++;
  }
}
