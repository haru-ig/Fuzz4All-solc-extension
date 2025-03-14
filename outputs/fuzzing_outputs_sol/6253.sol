pragma solidity ^0.8.0;
contract MutantCaller {
    address constant caller = 0xAAAAAAAAAA;
    Mutant4Mutator mutant;
    constructor() {
        mutant = new Mutant4Mutator();
        mutant.trigger.value(1 ether)(caller);
    }
    function mutant() public pure returns (bool) {
        return mutant.mutant;
    }
}
