pragma solidity ^0.8.0;
contract InlineAssembly6 {
    function test() public {

        string memory s = "1";
        assembly {
            let ptr := mload(0x0)
            s := and(ptr, ptr)
            s := add(s, s)
        }
    }
}
