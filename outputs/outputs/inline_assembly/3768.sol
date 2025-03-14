pragma solidity ^0.8.0;
contract SemanticallyEquivalent5 {

  constructor() public {}

  function setX(uint256 _x) external {
    x = _x;
  }

  uint256 public x;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent6 {

  constructor() public {}

  function add100() public {
    x += 100;
  }

  uint256 public x = 0;
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {

  constructor() public {}

  function compute(uint256 x) public pure {}

  function x() public {
    uint256 constant constantValue = 1000;
    compute(constantValue);
  }
}
