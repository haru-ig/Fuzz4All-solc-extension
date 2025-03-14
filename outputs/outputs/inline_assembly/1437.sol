pragma solidity ^0.8.0;
contract Mutant
{
  uint256 constant m = 1;
  uint public a;
  function test_1() public pure
  {
    a = m;
  }
}

pragma solidity ^0.8.0;
contract Mutant3t
{
  uint256 constant m = 1;
  bool status;
  uint256 public x;
  constructor(uint256 init) public
  {
    status = false;
    x = init;
  }
  function test_2() public pure{
    status = (x >= m);
    x = status;
  }
}

pragma solidity ^0.8.0;
contract Mutant4t
{
  uint256 constant m = 1;
  bool status;
  uint256 public x;
  constructor(uint256 init) public
  {
    status = false;
    x = init;
  }
  function test_3(uint256 start, uint256 middle, uint256 end) public pure
  {
    x = start;
    x = start * 2;
    x = m * x;
    x = x / end;
    x = start * 3;
    x = x / m;
    x = x / middle;
    x = x * m;
    x = x / m;
    x = x * middle / end;
  }
}

pragma solidity ^0.8.0;
contract Mutant5t
{
  uint256 constant m = 1;
  uint256 constant n = 2;
  uint256 constant s = 10;
  bool status;
  uint256 public x;
  constructor(uint256 init) public
  {
    status = false;
    x = init;
  }
  function test_4(uint256 mlow, uint256 mhigh, uint256 nhigh) public pure
  {

    x = mlow;
    x = x * mhigh;

    x = mlow;
    x = x * mhigh;

    x = mlow;
    x = x * mhigh * mlow;

    x = s / m - s / mlow;
    x = x * mhigh * mlow;

    x = s / m - s / mlow;
