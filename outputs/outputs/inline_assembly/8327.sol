pragma solidity ^0.8.0;
contract EmbedAssembly9 {
    function test() public view {
        string memory e = " ";
        assembly {
            let ptr := mload(0x0)
            mstore(ptr, or(e, 0x10))
            mstore(ptr, mul(ptr, ptr, ptr))
        }
    }
}
