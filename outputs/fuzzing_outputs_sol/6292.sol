pragma solidity ^0.8.0;
contract MutatedEquivalent{
    constructor() { }
    function mutantFunction() public {
      assembly {
        sstore(201, 0)
        return(0, 32)
      }
    }
}
