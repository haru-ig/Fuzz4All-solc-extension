pragma solidity ^0.8.0;
contract MutatorS15 {
  function mutate() public pure {
    assert(ONE_PLUS_SIX == SIZE);
  }
}

pragma solidity ^0.8.0;
contract MutatorS16 {
uint constant public SIZE = 1;
uint256 public constant ONE = 1;
uint256 public constant ZERO = 0;
uint256 public constant ONE_PLUS = ONE + 1;
uint256 public constant SIX = 6;
uint256 public constant SIX_MINUS = SIX - 1;
uint256 public constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 public constant ONE_PLUS_ONE_PLUS_SIX = ONE_PLUS_PLUS * SIX;
uint256 public constant SIZE_PLUS_SIX = ONE_PLUS_ONE_PLUS_SIX + 1;
uint256 public constant SIZE_ONE_PLUS_SIX = SIZE_PLUS_SIX + ONE;
uint256 public constant SIZE_PLUS_TWO = SIZE_ONE_PLUS_SIX + SIX_MINUS;
uint256 public constant SIZE_TWO = SIZE_PLUS_SIX + ONE_PLUS_SIX;
uint256 public c = ZERO;
  function mutate() public {
    c += ONE_PLUS_ONE_PLUS_SIX;
  }
}
