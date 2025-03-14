pragma solidity ^0.8.0;


pragma experimental ABIEncoderV2;

contract MutateAssembly102 {
    function test() public view {
        bytes memory x = "0";
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, add(ptr, 0xC0))
            mstore(0x0, keccak256(0x1976ea390000))
        }
    }
}
