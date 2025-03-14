pragma solidity ^0.8.0;
contract P12 {
  uint256 public x;
  uint256 public y;
  uint256 public z;
  constructor () public {}
  function set(uint256 a, uint256 b, uint256 c) public {
    x = a;
    y = b;
    z = c;
  }
}

pragma solidity ^0.8.0;
contract P13 {
  uint256 public x;
  uint256 public y;
  uint256 public z;
  uint256 public w;
  constructor () public {}
  function set(uint256 a, uint256 b, uint256 c, uint256 c2) public {
    x = a;
    y = b;
    z = c;
    w = c2;
  }
}

pragma solidity ^0.8.0;
contract P14 {
  uint256 public x;
  uint256 public y;
  uint256 public z;
  uint256 public w;
  constructor () public {}
  function get(uint256 a, uint256 b, uint256 c, uint256 d) public {
    x = a;
    y = b;
    z = c;
    w = d;
  }
}

pragma solidity ^0.7.6;
contract P15 {
  uint256 public x;
  uint256 public y;
  uint256 public z;
  uint256 public w;
  constructor () public {}
  function get(uint256 a, uint256 b, uint256 c, uint256 d) public {
    x = a;
    y = b;
    z = c;
    w = d;
  }
}

pragma solidity ^0.7.6;
contract P16 {
  uint256 public x;
  uint256 public y;
  uint256 public z;
  uint256 public w;
  constructor () public {}
