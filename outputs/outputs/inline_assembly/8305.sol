pragma solidity ^0.8.0;
contract InlineAssembly7 {
    function test() public {
        string memory s = "1";
        assembly {
            let len := mload(add(s, 0x18))
            let slice := mload(add(s, 0x20), len)
            s := substr(slice, 0, 4)
            s := add(s, 0x12)
            mstore(add(s, 0x20), len)
            mstore(add(s, 0x28), len)
        }
    }
}
