pragma solidity ^0.8.0;
contract ArithmeticOperations {

  event EventName(uint value, uint other);

  uint _zero = 0;


  uint public x = 0;
  uint public y = 0;
  uint public z = 0;

  function set(uint value, uint other)
  public{
    x = value;
    y = other;
    z = x + y;
    z = x - y;
    z = x * y;
    z = x / y;
  }

  function add() public {
    set(_zero, 1000000000);
    set(0,_zero);
  }

  function sub() public {
    set(_zero, _zero);
    set(_zero, 0);
  }

  function mul() public {
    set(1000000000, 0);
    set(0,1000000000);
  }

  function div() public {
    set(0, 0);
    set(0, _zero);
  }

}
