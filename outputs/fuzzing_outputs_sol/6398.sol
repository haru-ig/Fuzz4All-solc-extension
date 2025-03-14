pragma solidity ^0.8.0;
contract Mutant4 {
    function mutantCall() external returns (uint) {
        Mutant4FallbackFunction fallback = Mutant4FallbackFunction(0x042340ec6c0000000000000000000000000000001);
        return fallback.mutantSetFallbackFunction();
    }
}
