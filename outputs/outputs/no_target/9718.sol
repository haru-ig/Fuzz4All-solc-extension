pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
    returns (bytes memory) {
        return new bytes(0);
    } }
contract Contract { function isBugger2() public pure { } }
