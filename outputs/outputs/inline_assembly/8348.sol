pragma solidity ^0.8.0;
contract MutateAssembly {
    function test() public pure {
        bytes memory x = "0";
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, add(ptr, 1))
            mstore(0x0, mload(0x0))
        }
    }
}
