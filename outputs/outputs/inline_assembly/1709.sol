pragma solidity ^0.8.0;
contract MutatorS11 {
uint256 constant TWO = 2;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_TWICE = ONE_PLUS * TWO;
uint256 c = ONE;
  function mutate() public {
    c *= ONE_TWICE;
  }
}

pragma solidity ^0.8.0;
contract MutatorS12 {
uint256 constant TWO = 2;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ADDITION = TWO + ONE_PLUS;
uint256 c = ONE;
  function mutate() public {
    c += ADDITION;
  }
}


pragma solidity ^0.8.0;
contract MutatorS13 {
uint256 constant TWO = 2;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SUBTRACTION = TWO - ONE_PLUS;
uint256 c = ONE;
  function mutate() public {
    c -= SUBTRACTION;
  }
}
