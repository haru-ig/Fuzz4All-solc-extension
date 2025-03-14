pragma solidity ^0.8.0;
contract MutatorS15 is MutatorS14 {
uint256 constant ONE = 1;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant SIX = 6;
uint256 constant ONE_PLUS_SIX = ONE_PLUS * SIX;
uint256 constant SIZE = ONE_PLUS_SIX + 1;
uint256 constant MIN_VALUE = SIZE/ONE;
uint256 MAX_VALUE = SIZE/ONE_PLUS;

  function minSize(uint256 _minSize) public
  {
    require(MIN_VALUE > _minSize, "Input size must be greater than minimum expected value");
  }

  function maxSize(uint256 _maxSize) public
  {
    require(MAX_VALUE < _maxSize, "Input size must be lesser than maximum expected value");
  }

  function mutateOnePlus(uint256 _size) public
  {
    if(_size >= MIN_VALUE)
      {
        return;
      }
    require(_size < _size == MIN_VALUE, "Size must be within the defined range");
    uint256 onePlus = ONE_PLUS;
    ONE_PLUS_SIX = onePlus * SIX;
    assert(SIZE.sub(ONE_PLUS_SIX) >= _size);
  }

  function setMemorySize(uint256 _input) public
    mustBeBiggerThan(MIN_VALUE)
    minSize(_input)
    return(_input)
  {
    size() == _input;
    size() == ONE_PLUS_SIX;
  }

  function mutate() public
  {
    mutateOnePlus(1);
  }
}
/* @title Mutator contract with inline assembly, with and without memory size
The mutation will do the following:
  - allocates the input array (size = MIN_VALUE) and makes sure it is larger than MIN_VALUE.
  - creates an array of ONE_PLUS_SIX (size = ONE_PLUS_SIX) and assigns it to ONE_PLUS_SIX variable.
  - reserves input array space (size = ONE_PLUS
