pragma solidity ^0.8.0;
contract MutateAssembly8 {
    function test() public view {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, e)
            let m := and(ptr, ptr)
            mstore(0x0, sub(1, m))
        }
    }
}
