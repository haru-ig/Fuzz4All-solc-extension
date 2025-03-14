pragma solidity ^0.8.0;
contract Mutant3Mutator {
    function getFirstFallback() returns(Mutant3Fallback storage f) {
        return f;
    }
    function modifyFirstFallback() returns(Mutant3Fallback storage v) {
        return v;
    }
}

pragma solidity ^0.8.0;
contract Mutant3Generator {
    function getNextMutant(uint i) internal returns(Mutant3Mutater storage m) {
        if ( i >= 10 ) {
            return Mutant3Mutater(getFirstFallback());
        }
        return Mutant3Mutater(modifyFirstFallback());
    }
}
