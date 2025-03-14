pragma solidity ^0.8.0;
contract Greeter {
   string private _greeting;

  constructor () public {
    _greeting = "Hello World!";
  }

  function greet() public view returns (string memory) {
    return _greeting;
  }
}
