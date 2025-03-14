pragma solidity ^0.8.0;
contract Example2 {
    function __fallback() public pure returns (bytes memory) {
        return new bytes(0);
    }
}
