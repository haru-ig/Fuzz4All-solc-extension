pragma solidity ^0.8.0;
contract modifiedB {
  function e(uint b) public returns (uint8) {
    return (5536 + b) % 256;
  }
}

pragma solidity ^0.8.0;
contract modifiedC {

  function g(bool x) public returns (bool);

  function h(uint x, bool z) public returns (uint);
  function d() public returns (uint);

  function f(uint n) public returns (bool, uint);
  function e(uint8 z) public returns (uint);
  function i(uint b) public returns (int);


  contract parent {
    function g(bool z) public returns (bool);

    function h(uint n2, bool z) public returns (uint);

    function i() public returns (int);
  }
}
