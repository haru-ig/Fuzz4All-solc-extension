pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test() public {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            let s := and(ptr, ptr)
            let s := add(s, s)
            let s := add(s, s)
            let s := add(s, s)
        }
    }
}
