pragma solidity ^0.8.0;
contract Equation
{
  constructor(uint n) public { a = 0; b = 0; c = 0; d = 0; e = false; f = -32768; g = -1; i[0x470101010101010101010101010101010101] = false; }
}

library MathUtils
{
  function divmod(uint a, uint b)
  {
    uint quotient = a / b;
    uint remainder = a % b;
    return (quotient, remainder);
  }
}
