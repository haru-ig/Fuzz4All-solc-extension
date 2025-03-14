pragma solidity ^0.8.0;
contract Mutant0FallbackFunction3Incomparability {

    function mutantFallback(uint256 value) public pure {
        assert(value == 2 ** 20);
    }
}
