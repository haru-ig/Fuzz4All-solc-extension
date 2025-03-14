pragma solidity ^0.8.0;
library TestMutator {
    function getSome() internal view returns(uint40) {
        return getZero();
    }
}
