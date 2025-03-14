pragma solidity ^0.8.0;
contract Test52 {

    bytes32 immutable public gValue = keccak256(abi.encodePacked(Test38.g()));
    function f() public pure returns (byte[] memory) {
        return new bytes[2];
    }
}
