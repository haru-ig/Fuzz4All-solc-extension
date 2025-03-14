pragma solidity ^0.8.0;
contract InlineAssembly8 {
    function test() public {
        string memory e = "1";
        assembly {
            let ptr := mload(0x0)
            e := and(ptr, ptr)
            e := add(e, e)
            e := add(e, e)
            e := add(e, e)
        }
    }
}
