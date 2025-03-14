pragma solidity ^0.8.0;
contract SemanticMutation2
{
  function f(uint256 x) public pure returns (uint256 y) {
    y = 1/(x+1);
  }
}

contract SemanticMutation {
  function f() public pure returns (uint256) {
    return 1/(address(this) + address(this));
  }
}
