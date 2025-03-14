pragma solidity ^0.8.0;
contract Mutant7b
{
  uint8 y;
  uint8 counter= 0;
  function f(uint8 _value) public {
    counter += 2;
  }
  function g() public view returns (uint8) {
    return counter;
  }
}

pragma solidity ^0.8.0;
contract Mutant7
{
  uint8 y;
  uint8 counter= 0;
  function g() public view returns (uint8) {
    y = counter;
    y=100;
    return y;
  }
  receive() external payable {}
}
