pragma solidity ^0.8.0;
contract Convert {
    function toHexString(uint x) internal pure returns (String memory) {

        bytes memory b = new bytes(32);
        uint k = x;
        assembly {
            let i := mload(add(0x0, k))

            mstore(add(b, 0x20), mload(add(i, 0x20)))
            k := add(k, 0x1)
            i := mload(add(0x0, k))

            mstore(add(b, 0x40), mload(add(i, 0x40)))
            k := add(k, 0x1)
            i := mload(add(0x0, k))

            mstore(add(b, 0x60), mload(add(i, 0x60)))

            mstore(add(b, 0x80), mload(add(0x0, k)))
            k := add(k, 0x1)
            i := mload(add(0x0, k))

            mstore(add(b, 0xA0), mload(add(i, 0xA0)))
        }
        return string(b);
    }
}
