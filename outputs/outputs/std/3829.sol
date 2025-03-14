pragma solidity ^0.8.0;
import './BasicArithmetic.sol';
contract StringFunctions {
    function stringToArray(string memory s) internal pure returns (uint256[] memory xs) {
        bytes memory barr = bytes(s);
        uint256 n = barr.length;
        xs = new uint256[](n);
        for (uint256 i = 0; i < n; i++) {
          xs[i] = uint256(barr[i]);
        }
    }
    function reverse(uint256[] memory xs) internal pure returns (uint256[] memory) {
        uint256 n = uint256(xs.length);
        uint256[] memory tmp = new uint256[](n);
        while (n > 0) {
          tmp[--n] = xs[n];
        }
        return tmp;
    }
    function concat(uint256[] memory xs) internal pure returns (uint256[] memory) {
        uint256 n = uint256(xs.length);
        uint256[] memory xs2 = new uint256[](n * 2);
        for (uint256 i = 0; i < n; i++) {
          uint256 x = xs[i];
          uint256 carry = 0;
          uint256 x1;
          for (uint256 j = 0; j < i + 1; j++) {
            uint256 xj = xs[j];
            uint256 t = multiply(x, 256) + add(x, carry) + add(xj, carry);
            carry = divide(t, 256);
            xj = subtract(xj, carry);
            x1 = add(x1, xj);
          }
          uint256 c = uint256(uint8(x1) + uint8(carry));
          xs2[c] = x1;
          xs2[c + 1] = carry;
        }
        return reverse(xs2);
    }
    function getMinUint(uint256[] memory xs) private pure returns (uint256) {
      for (uint256 i = 0; i < uint256(xs.length);
