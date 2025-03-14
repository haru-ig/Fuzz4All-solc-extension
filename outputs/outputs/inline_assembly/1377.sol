pragma solidity ^0.8.0;
contract EvilMutant9j
{
  uint32 x;
function f(uint32 _value) public returns (uint32) {
  x = _value;
  uint32 ret = FOO(x, 2);
  return x;
}
function g() public view returns (uint32) {
  x = 31;
  uint32 ret = FOO(x, 2);
  return ret;
}
function h() public payable {
  while (true) {
    return;
    x = 31;
    uint32 ret = FOO(x, 2);
  }
}
}
