pragma solidity ^0.8.0;
contract Mutant5FallbackFunction {
    function mutantSetFallbackFunction() public pure {
        uint a = 2 ** 20;
        a = a + 1;
    }
}
contract Mutant {
    function callMutant(uint b) public {
        Mutant15FallbackFunction mutant15 = Mutant15FallbackFunction(0x1);
        mutant15.mutantSetFallbackFunction();
    }
    function mutant() public {
        Mutant18FallbackFunction mutant18 = Mutant18FallbackFunction(0x1);
        mutant18.mutantSetFallbackFunction();
    }
}
contract Mutant21FallbackFunction {
    function mutantSetFallbackFunction() public pure returns (uint) {
        return 21;
    }
}
contract Mutant15FallbackFunction {
    function mutantSetFallbackFunction() public view returns (uint) {
        return _fallbackFunction();
    }
    function _fallbackFunction() public pure returns (bytes32) {
        return 0x00;
    }
}
contract Mutant18FallbackFunction {
    function mutantSetFallbackFunction() public pure {
        return _fallbackFunction();
    }
    function _fallbackFunction() public pure returns (bytes32) {
        return 0x00;
    }
}
