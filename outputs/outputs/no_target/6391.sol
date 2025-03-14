pragma solidity ^0.8.0;
contract mutatedC {
  function f(uint256 a) public returns (uint256, uint256) {
    uint256 as_unsigned = a % 2;
    uint256 b;
    if( as_unsigned > 1) {
      b = uint256(2) % 2;
    }
    else {
      b = uint256(1);
    }
    return (b, b);
  }
}
contract mutatedC {
  function f(uint16 a) public returns (uint256) {
    uint16 as_unsigned = a % 2;
    uint256 b;
    if( as_unsigned > 1) {
      b = uint256(2) % 2;
    } else {
      b = uint256(1);
    }
    return b;
  }
}
contract mutatedC {
  function f(uint256 a) public returns (uint256, uint256) {
    uint256 as_unsigned = a % 2;
    uint256 b;
    if( as_unsigned > 1) {
      b = uint256(2) % 2;
    } else {
      b = uint256(1);
    }
    return (b, b);
  }
}
