pragma solidity ^0.8.0;
contract Mutated5 {
  uint256 public a;
  uint8 public b;
  uint16 public c;
  uint32 public d;
  uint64 public e;
  uint public one = 3;
  uint public two = 2;
  uint public three = 5;
  uint public four = 5;
  uint public five = 5;
  uint public six = 2;
  function decrease() public {
    a = a - one;
  }
  function decreaseOne() public {
    a = a - two;
  }
  function decreaseBoth() public {
    decrease();
    decrease();
  }
  function decreaseThree() public {
    decrease();
    decrease();
    decrease();
  }
  function decreaseFour() public {
    decrease();
    decrease();
    decrease();
    decrease();
  }
}
