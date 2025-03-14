pragma solidity ^0.8.0;
contract Example2 {
    function __fallback(address _unused) public pure returns (bytes memory) {
        return new bytes(0);
    }

    function fallback(uint256) public pure {
        assert(_);
    }
}
