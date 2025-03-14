pragma solidity ^0.8.0;
contract Modifications2 {
  uint256 public a;
  uint256 public b;
  constructor(uint256 s, uint256 x) public {
    uint256 y = s * x;
    a = y + s;
    b = y * x;
  }
}

pragma solidity ^0.8.0;
contract Modifications {
  uint256 public a;
  uint256 public b;

  constructor(uint64 s, uint64 i) public {
    uint256 y = uint256(s) * uint256(i);
    a = y + uint256(s);
    b = y * i;
  }
}

pragma solidity ^0.8.0;
contract Modifications1 {
  uint256 public a;
  uint256 public b;
  uint256 public s;
  uint256 public x;
  uint256 public y;
  constructor(uint s, uint x, uint i) public {
    uint256 y = uint256(s) * uint256(x);
    this.s = s;
    this.x = x;
    this.y = y;
    a = y + uint256(s);
    b = y * i;
  }
}

pragma solidity ^0.8.0;
contract Modifications4{
  uint256 public x;
  uint256 public y;
  constructor(uint256 _x, uint256 _y) public {

    x = (_x / (_x + 1)) * (_x + 1);
    y = _x * (_y + 1) - 1;
  }
}
