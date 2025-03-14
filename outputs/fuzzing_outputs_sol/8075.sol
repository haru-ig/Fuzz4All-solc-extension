pragma solidity ^0.8.0;

contract Fallback
{
    address payable addr;
    fallback () external { }
    receive () payable external { }
}
contract SemanticEquivalentK3
{
  Fallback f;
  function g() public {
    f = new Fallback();
  }
  fallback () external {
    payable(f).transfer(address(this).balance);
  }
}
contract SemanticEquivalentK4
{
}
contract SemanticEquivalentK5
{
  fallback () external {
    msg.sender.transfer(address(this).balance);
  }
}
contract SemanticEquivalentK6
{
  Fallback f;
  function g() public {
    f = new Fallback;
  }
  Fallback f2;
  uint s;
  fallback () external {
    f=new Fallback;
  }
  receive () payable external {
    if (s>10) {
      f2 = f;
    } else {
      msg.sender.transfer(address(this).balance);
    }
  }
}
contract SemanticEquivalentK7
{
  address f;
  fallback () public payable {
    f = msg.sender;
  }
  function g(address a) public payable {
    f = a;
  }
  function h() public payable {
    f.transfer(address(this).balance);
  }
}
contract SemanticEquivalentK8
{
  address payable f;
  fallback () public payable{
    f = msg.sender;
  }
  receive () payable external {
    if (msg.value>50 ||!i[msg.sender]) {
      f.transfer(address(this).balance);
    }
  }
}
