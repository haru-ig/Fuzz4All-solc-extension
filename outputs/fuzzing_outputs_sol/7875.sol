pragma solidity ^0.8.0;
contract FallbackMutant {
   receive() public payable {}
}
contract Caller {
  Mutant mutant = new Mutant();
  fallback();
  fallbackMutant();
  mutant.fallback();
  new FallbackMutant().fallback();
}

contract Mutant {
   fallback mutant() public payable {}
}

contract FallbackMutant {
   receive() mutant() public payable {}
}
