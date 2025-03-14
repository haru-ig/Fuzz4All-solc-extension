pragma solidity ^0.8.0;
contract EmbedAssembly9 {
    function test() public view {
        string memory str = "1";
        string memory e = "000000000402";
        assembly {
            let ptr := mload(0x0)

            e := substr(calldataload(0x14), 8, 1)
            mstore(0x0, add(ptr, 1))
            mstore(0x20, mload(0x20))
            mstore(0x40, ptr)
            mstore8(0x60, 14)
            mstore8(0x61, 17)
            mstore8(0x62, str.length)

            swap(ptr,0x20)
        }
    }
}
