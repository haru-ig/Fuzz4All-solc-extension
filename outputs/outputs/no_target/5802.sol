pragma solidity ^0.8.0;
import "./Bar2.sol";
contract Bug3 {

  mapping(address => bool) public foo;
  event E();
  constructor(address _foo) public{
    foo[_foo] = true;
    emit E();
  }
   function bar() public{
    assert(foo[msg.sender] == true);
    Bar z = new Bar2();
    z.setfoo(msg.sender);
  }
}
