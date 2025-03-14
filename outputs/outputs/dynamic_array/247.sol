pragma solidity ^0.8.0;
contract C10 {
  event E;
  event E2(uint s);

  constructor (uint x) public {
    m(x, 1);
  }

  function m(uint y, uint a) public pure {
    emit E2(y);
    return y + a;
  }

  function m2(uint x, uint a) public pure {
    emit E2(x);
    return x + a;
  }
}
