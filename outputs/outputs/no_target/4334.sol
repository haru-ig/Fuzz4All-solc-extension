pragma solidity ^0.8.0;
library X {
  event E(uint w);
  struct S {uint256 x;}
  function f() public {
    S s; s;
    s.x = 0;
    s.x == 0xf;
    require(s.x == s.x + 7);
    require(s.x == 7 + s.x);
    (uint[] memory a) = s.x;
    S.S(a) = s;
    S.S(a) == s;

    X.S(a) = s;
    X.E(17);
    X.E(17);

    library X {
      event E(uint256 o);
    }
  }
}
