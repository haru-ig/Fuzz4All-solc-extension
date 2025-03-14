pragma solidity ^0.8.0;


contract Greeter {
	string public message;
  constructor(string memory  a) public {
  	message = a;
  }
  function greet() public view returns (string memory message) {
    return message;
  }
}
