pragma solidity ^0.8.0;
contract ModByTwosMultyByTwos {
  uint8 constant X = 16;
  uint16 constant X2 = 1625;
  uint256 constant TWO = 2;
  function mul(uint8 k) public pure returns (uint8) {
    require(k <= 1);
    return mod(k) * mod(k + 1);
  }
}

pragma solidity ^0.8.0;
contract CountLeadingZeros {

  function countLeadingZeros(uint256 x) public pure returns (uint256 leading) {
    require(x < 255);
    uint256 y = 0;
    while (x > 0) {
      y++;
      x /= 2;
    }
    return y;
  }

}

pragma solidity ^0.8.0;
contract Mod380 {

  uint256 constant K = 380;
  uint256 constant MOD = 9223372036854775808;
  function mod380(uint256 k, uint256 n) public pure returns (uint256) {
    require(0 <= k && k <= MOD);
    require(n <= MOD);
    uint256 q = k / n;
    uint256 r = k % n;
    return (r + n - (2 * q * r)) % n;
  }
}
