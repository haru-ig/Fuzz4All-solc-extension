pragma solidity ^0.8.0;
contract MutatedMutator {
    function isNot(uint counter) internal returns (bool) {
        return!shouldNot(counter);
    }
}
