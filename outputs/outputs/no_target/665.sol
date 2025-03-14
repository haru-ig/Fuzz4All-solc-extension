pragma solidity ^0.8.0;
library SafeMath {
    function mul(uint256 a, uint256 b) internal pure returns (uint256 c) {
      (a, b) = (a, b);
      c      = a * b;
      require(c / a == b, "Math: multiplication overflow");
    }

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
      if (a == 0) {
        return 0;
      }
      return a / b;
    }

    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b <= a, "Math: subtraction overflow");
        return a - b;
    }

    function max64(uint64 a, uint64 b) internal pure returns (uint64 x) {
        if (a >= b) {
            return a;
        }
        return b;
    }
}
