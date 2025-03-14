pragma solidity ^0.8.0;
contract Mutant0FallbackFunction3Changes {
    fallback function mutantSetFallbackFunction() public pure returns (uint) {
        return 2 ** 20;
    }
}
