pragma solidity ^0.8.0;
library TestMutator {

    function getZero() internal view returns (uint40) {
        return unchecked((uint40)(1));
    }
}
