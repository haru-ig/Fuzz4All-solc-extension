pragma solidity ^0.8.0;



contract IERC20 {
    function name() external virtual returns (string memory);
    function symbol() external virtual returns (string memory);
    function decimals() external virtual returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

pragma solidity ^0.8.0;
library Convert {
  uint256 internal constant INT_MAX = type(uint256).max;
  uint256 internal constant INT_MIN = type(uint256).min;

  function toString(uint256 x, uint8 digits) public pure returns (string memory) {
    assert(digits > 0 && digits < 16);
    if (x == 0) return "0";

    string memory s = "";
    assembly {
      s := mload(add(x, 0x20))
      switch div(x, 10):
        case 0 {
          s := and(mload(add(mload(add(byte(31), s), 0x20))), sub(10, mload(add(byte(30), s))))
        }
        case 10 {
          s := and(mload(add(byte(2), s)), sub(10, mload(add(byte(1), s))))
        }
        default {
          s := add(mload(add(byte(9), s)), and(div(x, 10), 3))
        }
    }
    while(mload(add(s, 0x20)) < 10) s = "0" + s;
    s = s.substring(s.length - digits);
    return s;
  }

  function toStringUnsigned(uint x) public pure returns (string memory) {
    if (x == 0) return "0";

    string memory s = "";
    while (x!= 0) {
      uint shift = 18 - (uint(x & 18) * 2);
      x /= 10;
      if ((shift ==
