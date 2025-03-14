pragma solidity ^0.8.0;
contract D {
  uint8 x;
  function() external {
    unchecked {
      x = 255;
    }
  }
}
pragma solidity ^0.8.0;
contract D {
  uint8 x;
  uint256 __x_;
  function() external {
    if (x <= 255) {
      unchecked {

        x = 255;
      }
    }
    unchecked {
      __x_ = x;
    }
  }
  function _compare(uint8 _x) public view returns (bool) {
    return __x_ == _x;
  }
}
