pragma solidity ^0.8.0;
contract L14 {
    function check(uint a, uint b, uint c) public pure returns (uint) {
        assembly {
            let xStore := mload(0x10)

            if a == 0 {
                mstore(0x10, div(xStore, b))
            }

            if eq(b, 2) {
                mstore(0x10, mul(xStore, c))
            }
        }
        return a + b + c;
    }
}
