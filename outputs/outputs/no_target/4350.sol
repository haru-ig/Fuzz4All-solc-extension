pragma solidity ^0.8.0;
contract S
{
    function h() public pure {
    }
}
contract I
{
  function f() public pure {
  }
}
I i;
S s;
S s2;
S s3;
I i2;
address a;
contract K {

}
contract R {
  K k;
  constructor(K k_) {
    k = k_;
  }
  function f() public pure {
    k.M();
  }
  function g(I i) public pure {
    s2 = I(i);
  }
  function g2(S s2_) public pure {
    i2 = S(s2_);
  }
  function m(uint256 x) public pure {
    uint256 i = x;

  }
  function m2(uint256 x) public pure {
    uint256 i = x;

  }
}
