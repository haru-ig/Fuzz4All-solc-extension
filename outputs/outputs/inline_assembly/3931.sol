pragma solidity ^0.8.0;
contract SemanticallyEquivalent4 {
  string public description;
  uint public counter;

  constructor(string memory _description)public{
    description = _description;
    counter = 1;
  }


  modifier onlyOwner{

    require(msg.sender == owner());
    _;
  }

  function increment() onlyOwner public {
    counter += 1;
  }

  function getDescription() public view returns(string memory description){
    return description;
  }

  function incrementAndReturn() onlyOwner public returns(uint){
    counter += 1;
    return counter;
  }

  function returnSomething() onlyOwner public returns(uint, string memory) {
    description = "A description";
    return (counter, description);
  }

}
