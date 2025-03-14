pragma solidity ^0.8.0;
contract MutateAssembly9 {
    function test() public view {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, eq(ptr, ptr))
            mstore(0x0, add(1, ptr))
            mstore(0x0, mload(0x0))
        }
    }
}
