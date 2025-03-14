pragma solidity ^0.8.0;

contract Mutant2FallbackFunction {
    function mutantCallFallbackFunction() public pure {
        callFallbackFunction();
    }
    function mutantSetFallbackFunction() public pure {
    }
    function callFallbackFunction() public pure {
        (bool success, ) = address(0xf515f9e0021bd95bbcd103e0b6d2b4a23b3c534c).call{value:2**60}(new bytes(0));
        assert(success);
    }
}
