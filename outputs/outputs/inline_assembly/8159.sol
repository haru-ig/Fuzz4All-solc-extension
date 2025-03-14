pragma solidity ^0.8.0;
contract Mutated2 {
  address payable private newOwner;
  constructor(address payable _newOwner) public {
    newOwner = _newOwner;
  }
  function() external payable {
  }
  function withdraw() public {
    newOwner.transfer(address(this).balance);
  }
}
