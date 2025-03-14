pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
    returns (bytes memory) {} public fallback() public {} }

pragma solidity ^0.8.0;
contract Contract { function isBugger() public pure
    returns (bytes memory) {} function () public pure
    returns (bool) {} fallback() public {} }
