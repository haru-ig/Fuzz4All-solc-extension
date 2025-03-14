pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample40 {
    function set(bytes calldata b) external {
        assembly {
            let ptr := mload(add(b, 0))
            mstore(ptr, a8)
        }
    }
    uint8 constant a8 = 42;
}
