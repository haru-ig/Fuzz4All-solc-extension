pragma solidity ^0.8.0;
contract Injection_03
{
  using uint for uint256;

  uint c1 = 1;
  uint c2;
  uint c3;

  require(c1 > c2);
  require(c1 > c3);
  require(c2 > c3);

  require(c1 > 0);

  require(c1 > c2 || c1 > c3);
  require(c2 > c3 || c2 > 0);

  c2 = 3;
  c3 = 2;
  c1 = 3;


  address addr;

  function () external
  {
    addr = msg.sender;
  }
}
