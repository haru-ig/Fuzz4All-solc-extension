pragma solidity ^0.8.0;
contract SemanticSimilar8 is SemanticSimilar7{
function g() public returns (uint) {f1 = false; return 0;}
}

pragma solidity 0.8.5;
struct Person {
  uint8 name;
}
contract Caller
{
  function getAddressFromPerson(Person memory p) public returns (address){
    return address(this);
  }

  function getAddressFromPerson2(Person memory p) public payable{
    p.name=0;
  }
}
