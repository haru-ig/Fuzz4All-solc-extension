pragma solidity ^0.8.0;
contract Convert {
    function unsignedToBytes(uint x) internal pure returns (bytes memory) {
        bytes memory result = new bytes(4);
        result[0] = byte(uint8(x));
        assembly {
            mstore(add(result, 1), xor(x, 0xffffffff))
        }
    }
}
