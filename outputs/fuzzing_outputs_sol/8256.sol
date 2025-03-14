pragma solidity ^0.8.0;
contract SemanticSimilar14 {
  uint public x;
  function f() public {
    uint a = x / x;
    uint b = x * x;
    uint c = x;
    uint d = 2 * x * c;
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar15 {
  function g(uint x) public pure {
    uint y = x * 2;
    uint z = x / 3;
  }
  function f(uint a) public pure {
    g(a);
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar16 {
  function g(uint x) public pure {
    uint y = x;
    uint z = x + 2;
  }
  function f(uint a) public pure {
    g(a);
  }
}

pragma solidity ^0.8.0;
contract SemanticSimilar17 {
  constructor (uint _b) {
    b = _b;
  }
  function g(uint x) public pure {
    uint y = x + 3;
  }
  function f(uint a) public pure {
    g(a);
    a *= b;
  }
}

contract SemanticSimilar {



  constructor () {
  }

  function add(uint a, uint b, uint c) public pure returns (uint res) {
    res = a + b + c;
  }

  function addA(uint a, uint b) public pure returns (uint res) {
    res = add(b, a, b * 2);
  }

  function addB(uint x) public pure returns (uint res) {
    res = add(x, x, x + x);
  }

  function addC(uint x) public pure returns (uint res) {
    res = add(x, x, x - x);
  }

  function sub(uint a, uint b, uint c) public pure returns (uint res) {
    res = a - b - c;
  }

  function subA(uint a, uint b) public pure returns (uint res) {
    res = subtract(b, a, a + a);
  }
