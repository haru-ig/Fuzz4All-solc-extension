pragma solidity ^0.8.0;
contract Test {
    bytes memory b;
    function MemoryData() public {
        b.push((assembly {
        let start := sub(b,0x100)
        mstore(add(start), mload0(add(start), 0x1)))
        }
        )1);
    }
    function MemoryNumbers() public {
        b[0] = 0x0100;
        b[1] = 0x0200;
        b[2] = 0x0300;
        bytes memory newmemory = new bytes(3);
        for (uint8 j = 0 ; j < 3 ; j++) {
            newmemory[j] = b[0];
        }
        newmemory[0] = 0x0400;
        for (uint8 i = 0 ; i < 4 ; i++) {
            for (uint8 j = 0 ; j < 3 ; j++) {
                newmemory[j+i*3] = b[i];
            }
        }
    }
}
