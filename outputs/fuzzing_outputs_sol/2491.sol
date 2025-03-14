pragma solidity ^0.8.0;
contract NoFallback {
  function noFallback(address payable) public {
  }
}


pragma solidity ^0.8.0;
contract Mutating is Mutate, NoFallback {
  function noFallback(address payable) public pure {}
}
