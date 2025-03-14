pragma solidity ^0.8.0;
contract Mutant6FallbackFunction {
    address public a;

    function mutantSetFallbackFunction() public pure returns (uint) {
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
}
