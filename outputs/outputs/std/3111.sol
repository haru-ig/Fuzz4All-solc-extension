pragma solidity ^0.8.0;
contract Convert {
  function f(uint8[] memory x) public pure {
    uint8[] memory y;
    y[0] = x[x.length - 1];
    for (uint i = 0; i < x.length - 1; i++) {
      y[i + 1] = x[i];
    }
    Array.f(y);
  }
}
pragma solidity ^0.8.0;
contract MultiPrecision {
  function f(uint[] memory x) public pure {
    int[] memory y;
    y[0] = int(-1*x[uint(x.length - 1)]);
    for (uint i = 0; i < x.length - 1; i++) {
      y[i + 1] = int(x[i]);
    }
  }
}
