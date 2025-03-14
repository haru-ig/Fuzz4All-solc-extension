pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public {
        string memory e = "1";
        assembly {
            let zero := 0
            let ptr := mload(0x0)
            let mask := and(ptr, ptr)
            let mask := add(mask, mask)
            let mask := add(mask, mask)
            let mask := add(mask, mask)
            e := and(mask, mask)
            e := add(e, e)
            e := add(e, e)
            e := add(e, e)
        }
    }
}
