pragma solidity ^0.8.0;
contract L14 {
    function multiply(uint x, uint y) internal pure returns (uint) {
        assembly {
            let xStore := mload(0x30)
            let yStore := mload(0x40)
            mstore(0x30, mul(add(xStore, yStore), 42))
        }
        return x;
    }
}
