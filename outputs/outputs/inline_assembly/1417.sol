pragma solidity ^0.8.0;
contract Mutant9t
{
  uint32 value;
  bytes32 a;
  event MyEvent();

  modifier onlyMyEvent() {
    MyEvent();
    _;
  }
  function f() public onlyMyEvent returns (uint32) {
    value = a.length;
    a = "Some data";
    return value;
  }
  function g()
  public
  view
returns(uint32) {
  return 0;
}
function h() public returns (uint32) {
  return g();
}
