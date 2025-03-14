pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    uint[] memory y;
    y = [x[0]];
  }
}

pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory x) public pure {
    for (uint i = 0; i < x.length; i++) {
    }
  }
}
