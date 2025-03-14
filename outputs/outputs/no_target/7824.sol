pragma solidity ^0.8.0;
contract TestMutator {
    function getZero() internal view returns(uint40) {
        return TestMutator.getZero()++;
    }
}
