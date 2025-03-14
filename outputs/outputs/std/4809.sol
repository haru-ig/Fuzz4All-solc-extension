pragma solidity ^0.8.0;
struct G {
  bool a;
  uint b;
}
contract A {
  address addr1;
  address addr2;
  uint public val;
  function a() public {
    G storage g = G(0x8937DAA1DCC100CAE574E53E7CEBD06D7F8D2878);
    g.a = false;
    g.b = 0x9000;
    g.b = 100;
    g.a = true;
    g.a = false;
    g.b = 250;
    g.b = 42;
    g.b = 1;
    g.b = 0xFF;
    g.a = true;
  }
}

pragma solidity ^0.8.0;
contract B {
  uint a;
  uint constant b = 100;
  constructor() public {
    a = a + 1;
  }
  function yada() public pure {}
}
