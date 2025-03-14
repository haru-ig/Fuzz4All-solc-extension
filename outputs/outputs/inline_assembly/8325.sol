pragma solidity ^0.8.0;
contract EmbedAssembly9 {
    function test() public view {
        string memory e = "12";
        assembly {
            let ptr := mload(0x0)
            e := and(ptr, ptr)
        }
    }
}
