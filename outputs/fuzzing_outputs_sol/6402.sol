pragma solidity ^0.8.0;
import "./Mutant5FallbackFunction.sol";
contract Mutant4 {
    function mutantSetFallbackFunction() public pure returns (uint) {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutant0 {
    function mutantSetFallbackFunction() public { }
}

pragma solidity ^0.8.0;
contract Mutant1 is Mutant0 {
    function mutantSetFallbackFunction() public pure {
        uint a = 1;
        if (a < 1) {
            a = a + 1;
        }
    }
}

/*
