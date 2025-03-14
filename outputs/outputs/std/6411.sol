pragma solidity ^0.8.0;
contract Random {
function genBytes(uint _n) internal pure returns (bytes32) {
    bytes32 x;
    for (uint i = 0; i < _n; i++) {
        bytes32 y;
        assembly {
            y := mload(add(_bytes, 32 * i))
        }
        x = keccak256(abi.encodePacked(x, y));
    }
    return x;
}
}
