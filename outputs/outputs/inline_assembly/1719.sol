pragma solidity ^0.8.0;
contract MutatorS15 {
  uint256 constant ONE = 1;
uint256 constant SIZE = ONE + 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_ONE_PLUS = ONE_PLUS + ONE_PLUS;
uint256 constant ONE_PLUS_ONE_PLUS_ONE_PLUS = ONE_PLUS_ONE_PLUS + ONE_PLUS_ONE_PLUS;
uint256 c = ONE;
  function mutate() public {
    c += ONE_PLUS_ONE_PLUS_ONE_PLUS;
  }
}


pragma solidity ^0.8.0;
contract MutatorS16 {
  struct Trivial {
    uint256 a;
    uint256 b;
  }
  uint256 constant SIZE = 2;
  uint256 constant SIX = 6;
  uint256 constant SIX_PLUS_ONE = SIX + ONE;
  uint256 constant INT_SIZE = 18;
  uint256 constant MAX_X = 5;
  address constant ZERO_ADDRESS = 0x000000000000000000000000000000000000000;

  event Mapped(uint256 _index, uint256 _a);
  uint256 constant ADD_X = 9;
  uint256 constant ADD_ONE =1;
  uint256 constant ADD_ONE_TO_MAX_X = 6;
  uint256 constant ADD_TWO = 2;
  uint256 constant ADD_TWO_TO_MAX_X = 3;
  uint256 constant ADD_THREE = 3;
  uint256 constant ADD_THREE_TO_MAX_X = 4;

  event Set(uint256  _index, uint256 _a);
  uint256 constant MAX_X =
