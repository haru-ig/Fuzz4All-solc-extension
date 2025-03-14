pragma solidity ^0.8.0;
contract Example3 {
    function __fallback(address _unused) public pure returns (bytes memory) {
        return new bytes(0);
    }
}
