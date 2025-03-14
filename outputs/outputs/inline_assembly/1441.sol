pragma solidity ^0.8.0;
contract Mutant13t
{
  struct Rectangle
  {
    uint128 a;
    uint128 b;
  }
  uint128 _a;
  function init_a() public { _a = 0; }
  function set_a(uint128 _a) public {require(uint256(_a) >= _a,_a);}
  function get_a() public returns(uint128) { return _a; }
  function sub_a(uint128 _a) public    { _a -= 2; require(_a <= _a * 2, "test"); }
}
