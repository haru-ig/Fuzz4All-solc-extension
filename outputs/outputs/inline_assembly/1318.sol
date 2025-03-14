pragma solidity ^0.8.0;
contract Mutant3
{
  uint8 b;
  uint8 h;
  bool m;

  constructor(uint8 d, uint8 e, bool f) public
  {
    b = d;
    h = e;
    m = f;
  }

  receive() public payable
  {
    emit MutantEvent(b, h, m);
  }

  event MutantEvent(uint8, uint8, bool);
}

pragma solidity ^0.8.0;

contract Mutant3
{
  uint8 b;
  uint8 h;
  bool m;

  constructor(uint8 d, uint8 e, bool f) public
  {
    b = d;
    h = e;
    m = f;
  }

  receive() public payable
  {
    emit MutantEvent(b, h, m);
  }

  event MutantEvent(uint8, uint8, bool);
}
