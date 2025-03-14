pragma solidity ^0.8.0;
library Bitwise {

    function NOT(uint256 x) internal pure returns (uint256 a) {
    return ~(a = x) + 1;
  }

    function AND(uint256 a, uint256 b) internal pure returns (uint256 b1) {
        b1 = a & b;
    return b <= a? b : a;
  }

    function XOR(uint256 a, uint256 b) internal pure returns (uint256 b1) {
        b1 = a ^ b;
    return b <= a? b1 ^ a : b1;
  }

    function OR(uint256 a, uint256 b) internal pure returns (uint256 b1) {
        b1 = a | b;
    return b <= a? b1 : a;
  }

    function GT(uint256 a, uint256 b) internal pure returns (bool b1) {
        if (b >= a) {
            return true;
        } else {
            return 0;
        }
    }

    function GTE(uint256 a, uint256 b) internal pure returns (bool b1) {
        if (a>=b) {
            return true;
        } else {
            return false;
        }
    }

    function LT(uint256 a, uint256 b) internal pure returns (bool b1) {
        if (a < b) {
            return true;
        } else {
            return 0;
        }
    }

    function LTE(uint256 a, uint256 b) internal pure returns (bool b1) {
        if (a<=b) {
            return true;
        } else {
            return 0;
        }
    }
}
