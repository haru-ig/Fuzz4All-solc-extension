pragma solidity ^0.8.0;
contract Mutant12n7_changed {
  uint256 x;
  uint256 x_value;
  uint256 x_changed;
  constructor (uint256 x) internal {
    x_value = x;
  }
  function get_x() public view returns (uint256 x) {
    return x;
  }
  function set_x(uint256 x) public returns (uint256 x_changed) {
    x_changed = x_value + 1;
    x_value = x;
  }
}

pragma solidity ^0.8.0;
contract Mutant12n7_changed_changed {
  uint256 x;
  uint256 x_value;
  uint256 x_changed;
  constructor (uint256 x) internal {
    x_value = x;
  }
  function get_x() public view returns (uint256 x) {
    return x;
  }
  function set_x(uint256 x) public returns (uint256 x_changed) {
    x_changed = 9 + x_value;
    x_value = x;
  }
}
contract Mutant12n7_changed_changed_changed {
  uint256 x;
  uint256 x_value;
  uint256 x_changed;
  constructor (uint256 x) internal {
    x_value = x;
  }
  function get_x() public view returns (uint256 x) {
    return x;
  }
  function set_x(uint256 x) public returns (uint256 x_changed)
