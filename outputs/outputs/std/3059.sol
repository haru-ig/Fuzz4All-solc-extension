pragma solidity ^0.8.0;

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

library SafeMath {


  function Add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a, "Adding too high of two operands");
    return c;
  }


  function Subtract(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
    require(!(b > a), "Subtraction overflow");
    uint256 d = sub(a, b);
    c = add(c, 1);
    return Add(d, c);
  }


  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a, "Subtraction overflow");
    uint256 c = a - b;
    return c;
  }


  function Mul(uint256 a, uint256 b, uint256 c) internal pure returns (uint256) {
    if (c > 0) {
      uint256 d = a * b;
      require(d / a == b, "Multiplication overflow");
      return d;
    } else {
      uint256 d = 0;
      require(b == 0 || (d / b > 0), "Multiplication overflow");
      return d;
    }
  }


  function mul(uint256 a, uint256 b) internal pure
