pragma solidity ^0.8.0;
contract InlineAssembly5 {
    function test() public {
        string storage s = "1";
        assembly {
            let ptr := add(s, 0x18)
            s := and(ptr, ptr)
            s := add(s, s)
        }
    }
}
