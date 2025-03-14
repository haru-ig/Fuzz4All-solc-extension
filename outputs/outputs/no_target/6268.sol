pragma solidity ^0.8.0;
contract MyContract {
    function method(bytes32) public pure returns (bytes32 v) {
        v = 0x7;
        unchecked {
            v++;
        }
        return v;
    }
}
