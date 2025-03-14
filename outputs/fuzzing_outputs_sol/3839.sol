pragma solidity ^0.8.0;
contract Example3 {
    function __fallback(bytes memory unused) public pure returns (bytes memory) {
        return new bytes(0);
    }
}
