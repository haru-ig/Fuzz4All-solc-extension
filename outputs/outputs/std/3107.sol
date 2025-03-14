pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint[] memory y;
    y = x;
  }
  function g(uint[] memory x) public pure {
    uint[] memory y;
    y[0] = 1;
    y = x;
  }
}

pragma solidity ^0.8.0;
contract Array {


  uint[] public storage x;
  function f() public pure {
    uint[] memory y;
    y[0] = 1;
    x = y;
  }
  function h(uint[] storage x) public pure {
    uint[] memory y;
    y[0] = 1;
    x = y;
  }
}
