pragma solidity ^0.8.0;
contract mutationv56720
{
  bytes x;
  bool y;
  address z;
  constructor(uint x_, bool y_) public { set_bool(x_); set_addr0(x_); set_bool(y_); set_addr1(y_); }
  function set_addr0(uint x_) public { x=bytes1(x_); setaddr(x_[0], 0); set_bool(x_[0]); set_uint128(x_[1]); set_uint256(x_[2]); set_uint64(x_[3]); set_uint80(x_[4]); set_uint160(x_[5]); }
  function set_uint128(uint x_) public { set_addr1(x_); set_bool(x_); }
  function set_uint256(uint x_) public { set_uint80(x_); set_bool(x_); }
  function set_uint80(uint x_) public { set_uint160(x_); set_bool(x_); }
  function set_uint160(uint x_) public { set_addr1(x_); set_bool(x_); }
  function set_addr1(uint x_) public { set_addr0(x_); set_bool(x_); }
  function set_bool(uint x_) public { x=bytes1(x_); setaddr(x_[0], 1); }
  function setaddr(uint32 x_, uint32 y_) public { z=0; z=z[0];  }
    function f() public pure { uint c=0; uint256 d=21346; uint256 e=5; e&=11; }
    function g() public pure {}
    function h() public pure {}
    function i() public pure { uint y=0; y=y[0]; uint256 e=5; e&=11; setaddr(y, 2); }
}
