pragma solidity ^0.8.0;
contract Mutant4FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 2 ** 20;
        a = a + 1;
        return a;
    }
}
