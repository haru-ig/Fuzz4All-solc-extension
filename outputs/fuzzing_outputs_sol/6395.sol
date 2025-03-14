pragma solidity ^0.8.0;
contract Mutant5FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
}
