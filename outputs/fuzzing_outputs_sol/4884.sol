pragma solidity ^0.8.0;
contract Mutator {
    function() public payable {}
}

contract HelloWorld {
  function greet(string memory _to ) public pure returns (string memory rslt) {
    return "Hello, " + _to + "!";
  }
}
