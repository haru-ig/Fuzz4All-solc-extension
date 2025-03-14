pragma solidity ^0.8.0;
contract L14 {
    function divide(uint x, uint y) internal pure returns (uint) {
        assembly {
            let xStore := mload(0x10)
            let yStore := mload(0x20)
            mstore(0x10, div(xStore, yStore))
        }
        return x;
    }
}
