pragma solidity ^0.8.0;
contract SemanticSimilar8{
  function f1() public returns (uint) {
    require (f1);
    return 0;
  }
  function g() public payable {
    require (f1);
    emit Emitted1();
  }
  event Emitted1();
  bool f1;
}
