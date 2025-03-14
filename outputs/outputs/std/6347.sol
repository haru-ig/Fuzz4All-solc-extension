pragma solidity ^0.8.0;
contract Mutator {

  constructor () {
    a = 10;
  }

  uint256 public x;
  uint256 public y;
  uint256 public a;
  uint256 private v0;
  uint256 private v1;

  function myFunction() public {
    x = multiply(add(y, 2), a);
    x *= multiply(add(y, 1), a);
    x += multiply(add(y, 3), a);
    x *= multiply(add(y, 4), a);
  }

  function increment(uint256 _x) internal {
    uint256 newX = _x;
    newX *= 2;
    newX += a;
    newX += v0;
    v0 = v1;
    v1 = newX;
  }

  function decrement(uint256 _i) internal {
    uint256 newI = _i;
    newI *= 2;
    newI += a;
    newI += v0;
    v0 = v1;
    v1 = newI;
  }
}

pragma solidity ^0.8.0;
contract Ganga {
  mapping(uint => address) private _addresses;
  constructor () public {
    _addresses[0] = 0x000000000000000000000000000000F83D395B600E812313C469F97B8F2084E;
    _addresses[1] = 0x0000000000000000000000000000000000000000000008e942A0f0d086636D40;
    _addresses[2] = 0x0000000000000000000000000000000000000000000016A59C38b1a8e79676EA2;
    _addresses[3] = 0x0000000000000000000000000000000000000000000
