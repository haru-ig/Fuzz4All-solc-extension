pragma solidity ^0.8.0;


contract L13 {

    function multiply(uint x, uint y) internal pure returns (uint) {
        assembly {


            let xStore := mload(0x10)
            let yStore := mload(0x20)
            mstore(0x10, mul(xStore, yStore))

        }
        return x;
    }
}
