pragma solidity ^0.8.0;
contract Mutant0FallbackFunction {
    function mutantSetFallbackFunction() public payable {
        uint v1 = Mutant0FallbackFunction3Changes.mutantSetFallbackFunction();
        uint v2 = Mutant1FallbackFunction.mutantSetFallbackFunction();
        uint result = v2 * v1;
    }
}
