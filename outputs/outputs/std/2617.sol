pragma solidity ^0.8.0;
library SafeMath {

    function add(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require((a == 0) || (c >= a));
        return c;
    }

    function max(uint a, uint b) internal pure returns (uint) {
        uint c = a >= b? a : b;
        return c;
    }

    function digits(uint n) internal pure returns (uint) {
        uint base = 10;
        uint digit = 0;
        while (n!= 0) {
            digit ++;
            n /= base;
            base = base / 10;
        }
        return digit;
    }

    function pow(uint value, uint times) internal pure returns(uint) {
      uint result = 1;
      for (uint i = 1; i <= times; i++) {
        result *= value;
      }
      return result;
    }
}
