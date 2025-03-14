pragma solidity ^0.8.0;
library TestMutator {
    function getZero() internal pure returns (uint40) {
        TestMutator._notIn_zeroTest();
    }
}
