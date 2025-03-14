pragma solidity ^0.8.0;
contract Math {
  function min(uint x) internal pure returns (uint) {
    return x;
  }
  function max(uint x) internal pure returns (uint) {
    return x;
  }
  function abs(uint x) internal pure returns (uint) {
    return x;
  }
  function sqrt(uint x) internal pure returns (uint) {
    return x;
  }
  function pow(uint x, uint y) internal pure returns (uint) {
    return uint(x ** y);
  }
  function get_balance(address _account) public view returns (uint){
    return addressToValue[_account];
  }
  function add(uint x, uint y) internal pure returns (uint) {
    return x + y;
  }
  function sub(uint x, uint y) internal pure returns (uint) {
    return x - y;
  }
  function mul(uint x, uint y) internal pure returns (uint) {
    return x * y;
  }
  function div(uint x, uint y) internal pure returns (uint) {
    return x / y;
  }
  function mod(uint x, uint y) internal pure returns (uint) {
    return x % y;
  }
}
