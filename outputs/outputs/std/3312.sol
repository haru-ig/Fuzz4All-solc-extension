pragma solidity ^0.8.0;
contract Math {
  function sqrt(uint256 x) internal pure returns (uint256) {
    if (x > 32) {
      return 2 ** 255;
    }
    uint256 s = 1;
    uint256 t = x;
    uint256 y;
    while (t * 2 <= x) {
      x = t;
      t = (t + x) / 2;
      s *= 2;
    }
    while (t >= x) {
      t = (t - x) / 2;
      y *= 2;
      y += 1;
    }
    return (y + x + s / 2);
  }

  function pow(uint256 _x, uint256 _y) internal pure returns (uint256) {
    require(_y >= 0, "Math.sol:^3430: Overflow.");
      uint256 x = _x;

      uint256 result = 1;
      while (_y > 0) {
        if (_y % 2 == 1) {
          result = result * x;
           }
        _y /= 2;
        x = x * x;
       }
       return (result);
    }

  function mod(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a % b;

    if (c < 0) {
      c = b + c;
    }
    return (c);
  }

  function add(uint256 x, uint256 y) internal pure returns (uint256) {
    return (x + y);

  }

  function sub(uint256 x, uint256 y) internal pure returns (uint256) {
    require(y >= x, "Math.sol:^3430: Overflow.");

    return (x - y);
  }

  function mul(uint256 x, uint256 y) internal pure returns (uint256) {
    require(y > 0, "Math.sol:^3430: Overflow.");
    uint256 z = 0;
    uint256 x_ = x;
    uint256 y_ = y;
    while (x_!= 0) {
      uint256 m = y_ & 1;
      y_ = y_ / 2;
      if (_x & (1 ** (uint256(y_) % 256))) {
        z = z + m * x_;

      }
      x_ = x_ / 2;
    }
    return (z);
  }

  function div(uint256 x, uint256 y) internal pure returns (uint256) {
    return (x / y);
  }

  function min(uint256 a, uint256 b) internal pure returns (uint256) {
    return (
