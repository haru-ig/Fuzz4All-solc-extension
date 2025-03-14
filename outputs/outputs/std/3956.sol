pragma solidity ^0.8.0;
contract Math {
     function _mod(uint x, uint y) internal pure returns(uint z) {
          if (y == 0) { return x; }
          z = x % y;
          require((z >= 0) && (z <= y), "Math: modulo overflow");
          return z;
     }

        function isZeroOrOne(uint256 x) internal pure returns(bool) {
             return x == 0 || x == 1;
        }
}
