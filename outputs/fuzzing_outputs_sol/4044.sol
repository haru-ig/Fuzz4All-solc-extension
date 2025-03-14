pragma solidity ^0.8.0;
library MutantFactory {
  function create(bytes memory bytecode) public returns (Mutant) {
    Mutant mutant = new Mutant();
    assembly {

      let ptr := mload(add(bytecode, 0x40))
      store(ptr, codesize)
    }
    return mutant;
  }
}
contract Mutant is MutantFallback2 {
  Mmutant mutant;
  function () public payable {
    mutant.myFallback();
  }
}
