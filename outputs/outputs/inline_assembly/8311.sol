pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public {
        string memory s = "1";
        assembly {
            let ptr := mload(0x0)
            s := and(ptr, ptr)
            s := add(s, s)
            s := add(s, s)
            s := add(s, s)
        }
    }
}
