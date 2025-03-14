pragma solidity ^0.8.0;
contract Caller {
  address public owner;
  uint public myCallCount;
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }
  function changeOwner() public onlyOwner {
    owner = msg.sender;
  }
  function count() public view returns (uint count) {
    count = myCallCount;
  }

  function() public payable {
    myCallCount++;
  }
}
