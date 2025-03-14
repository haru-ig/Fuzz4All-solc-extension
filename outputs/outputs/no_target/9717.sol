pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
    returns (bytes memory) { } }

pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
    returns (bytes memory) public constant { return 0x55; } }
