pragma solidity ^0.8.0;
contract Mutant91
{
  struct Data
  {
    uint256 _a;
    uint256 _b;
    uint256 _c;
  }
  uint256[2] public _data;




  function f() public returns (uint256) {
    uint256 _x;
    for(uint256 i = 1;i<2;i++)
      _x += 20 * (uint256(i));
    Data storage ds = _data[0];
    ds.a = 1;
    ds.b = 2;
    ds.c = 3;
    _x += ds.a;
    return _x;
  }
  function set(uint256 a, uint256 b, uint256 c) public {
    Data storage ds = _data[0];
    ds.a = a;
    ds.b = b;
    ds.c = c;
  }
}
