pragma solidity ^0.8.0;
contract EmbedAssembly {
    function test() public pure {
        string memory test = "I am a simple program";
        assembly {
            let ptr := mload(0x0)
            store(ptr, add(add(ptr, 0x20), 0x20), 0xf5)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x41)
            let _str := mload(ptr)
            i := mload(0x0)
            sstore(add(add(i, 0x20), 0x20), add(ptr, add(ptr, 0x20)), and(add(i, 0x20), 0x20), and(add(i, 0x20), 0x20))
            store(ptr, add(add(ptr, 0x20), 0x20), 0x69)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x64)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x61)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x6c)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x65)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x20)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x45)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x66)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x69)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x68)
            store(ptr, add(add(ptr, 0x20), 0x20), 0x20)
        }
        assert(test == string(mload(ptr)));
    }
}
