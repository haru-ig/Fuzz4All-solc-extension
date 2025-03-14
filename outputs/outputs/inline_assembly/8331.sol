pragma solidity ^0.8.0;
contract MutateAssembly9 {
    function test() public {
        string memory e = "1";
        address x;
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, or(ptr, 0xf255ba))
            mstore(0x80, x)
            mstore(x, ptr)
            e := and(ptr, or(x, 0xf255ba))
        }
    }
}
