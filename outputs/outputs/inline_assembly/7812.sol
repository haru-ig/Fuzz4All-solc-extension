pragma solidity ^0.8.0;
contract L15 {
    function multiply(uint x, uint y) internal pure returns (uint) {
        if x == 0 { return y; }
        if y == 0 { return 0; }
        assembly {
            let xStore := mload(0x30)
            let yStore := mload(0x40)
            mstore(0x30, mul(add(xStore, yStore), 42))
            mstore(0x40, xStore)
        }
        assembly {
            let xResult := mload(0x20)
            let yResult := mload(0x30)
            mstore(0x20, sub(xResult, sub(x, xResult)))
            mstore(0x30, sub(yResult, sub(y, yResult)))
        }
        return xResult;
    }
}
