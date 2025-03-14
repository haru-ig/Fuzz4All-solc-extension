pragma solidity ^0.8.0;
contract Mutant7b
{
  function f(uint8 x) public pure returns (uint8) {
    return x + 1;
  }
}

pragma solidity ^0.8.0;
contract Mutant7c
{
  function f(uint8 y) public pure returns (uint8) {
    return y + 1;
  }
}

contract Mutant7
{
  Mutant7a internal __target;
  Mutant7b internal __copy;
  Mutant7c internal __mutant;
  constructor(Mutant7a target) public {
    __target = target;
  }
  function f() public view returns (uint8) {
    return __target.g();
  }
  receive() external payable {}
  function setInput(uint1 b) public {
    __target.f(b);
  }
  function copy() public {
    __copy = Mutant7(address(this));
  }
  function mutate() public {
    y = __copy.f(1);
    __mutant = Mutant7(address(this));
  }
}
