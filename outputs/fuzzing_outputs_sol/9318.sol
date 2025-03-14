pragma solidity ^0.8.0;
contract MutatedFallback {
  function fallback() onlyOwner nonReturning fallback() public {
  }
}

pragma solidity ^0.8.0;
contract MutatedFallbackWithModifiers {
  function fallback() onlyOwner nonReturning fallback() public payable {
  }
  function fallback() onlyOwner nonReturning receive() public payable {
  }
  function fallback() onlyOwner nonReturning receive() public payable pure {
  }
}
