pragma solidity ^0.8.0;
contract MutatedEquivalentSolidity {
    function X() public pure returns (uint) {
        return x();
    }
}
