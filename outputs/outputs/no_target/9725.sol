pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure { bytes memory bug = bytes(0,0,0,0,0,0,0,0); }}

pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure { bytes memory bug = bytes(); }}
