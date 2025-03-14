pragma solidity ^0.8.0;
contract HelloWorld {
  uint8 constant Z = 16;
  function whatIsZ() public view returns(uint8) {
    uint8 a = Z;
    uint8 b = Z;
    return a - b;
  }
  uint8 constant X = 16;
  function whatIsX() public view returns(uint8) {
    uint8 k = X;
    uint8 j = X;
    uint8 h = (k-j)+X;
    uint8 m = (k/40)-j;
    uint8 b = (X/40)+h;
    return a - b;
  }
  uint256 constant FIFTEEN = 15;
  function whatIsFifteen() public view returns(uint256) {
    uint8 a = FIFTEEN;
    uint8 b = FIFTEEN;
    return a - b;
  }
  uint256 constant TWO = 2;
  function whatIsTwo() public view returns(uint256) {
    uint256 k = TWO;
    uint256 j = TWO;
    uint256 h = (k-j)+TWO;
    uint256 m = (k/40)-j;
    uint256 b = (TWO/40)+h;
    return a - b;
  }
}

pragma solidity ^0.8.0;
contract HelloWorld {
  uint8 constant Z = 16;
  function whatIsZ() public view returns(uint8) {
    uint8 b = Z;
    uint8 a = Z;
    return a - b;
  }
  uint8 constant Y = 17;
  function whatIsY() public view returns(uint8) {
    uint8 k = Y;
    uint8 j = Y;
    uint8 h = (k-j)+Y;
    uint8 m = (k/40)-j;
    uint8 c = (Y/40)+h;
    return a - c;
  }
  uint8 constant O = 15;
  function whatIsO() public view returns(uint8) {
    uint8 k = O;
    uint8 j = O;
    uint8 h = (k-j)+O;
    uint8 m = (k/40)-j;
    uint8 d = (O/40)+h;
    return a - d;
  }
}

contract HelloWorld {
  uint256 constant ONE = 1;
  uint256 constant FIVE = one + 1;
