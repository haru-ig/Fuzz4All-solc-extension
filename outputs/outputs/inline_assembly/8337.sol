pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutateAssembly9 {
    function test() public view {
        return uint8(keccak256(abi.encodePacked(uint8(10 - 1))));
    }
}
