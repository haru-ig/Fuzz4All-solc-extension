pragma solidity ^0.8.0;
contract MutatedExample3 {

    function __fallback(address unused) public pure returns (bytes memory) {
        return new bytes(0);
    }
}
