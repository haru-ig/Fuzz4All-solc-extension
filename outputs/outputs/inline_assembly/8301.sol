pragma solidity ^0.8.0;
contract InlineAssembly11 {
    function test() public {
        string memory s = "1";
        assembly {
            let v := 0
            let ptr := add(s, 0x18)
            s := copy(add(ptr, 0x18), ptr, v)
        }
    }
}
