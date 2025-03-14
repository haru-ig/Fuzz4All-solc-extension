pragma solidity ^0.8.0;
contract Convert {
  function f(uint x, uint y) public pure returns (uint z) {
    z = x / y;
  }
}

pragma solidity ^0.8.0;
contract Memory {
  function f(uint x) public pure returns (uint[] memory) {
    uint[] memory y = new uint[](1);
    y[0] = x;
    return y;
  }
}
