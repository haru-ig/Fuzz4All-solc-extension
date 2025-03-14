pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public {
        assembly {
            let ptr := mload(0x0)
            ptr := ptr.add(ptr)
            ptr := ptr.add(mload(1))
        }
    }
}
