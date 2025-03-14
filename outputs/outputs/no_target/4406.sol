pragma solidity ^0.8.0;
contract L {
    mapping (bytes32 => bool) boolMap;
    mapping (bytes32 => bytes32) bytesMap;
    function f() public pure {
        assembly {
            bool r := and(keccak256(0x1), 0x2)
        }
    }
}
