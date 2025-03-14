pragma solidity ^0.8.0;
contract Mutant3FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        * (uint a = 2 * (2 ** 20)) = 2 ** 20;
        return 2 * (2 ** 20);
    }
}
