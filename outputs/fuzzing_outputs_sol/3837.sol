pragma solidity ^0.8.0;
contract Example3 {
    function __fallback() public pure returns (bytes memory) {
        bytes memory empty = new bytes(0);
        return empty;
    }
}
