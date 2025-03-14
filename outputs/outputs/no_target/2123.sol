pragma solidity ^0.8.0;
contract Modifications3{

  uint256 public a;
  uint256 public b;
  constructor(uint256 _s, uint256 _i) public {
    uint256 x = _s * _i;
    a = x + _s;
    b = x * _i;
  }

  modifier notMaxInt32 {
    require(a <= 2**31);
    _;
  }

  modifier notMaxInt64 {
    require(a <= int64(2**63));
    _;
  }


  modifier notMaxInt256 {
    require(a <= 2**256);

    _;
  }


  modifier notMaxInt128 {
    require(a <= 2**128);
    _;
  }
}
