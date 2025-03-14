pragma solidity ^0.8.0;
contract Mutate {
    bytes32[] a;
    function mutateArray(bytes32[] memory b) public pure {
        b[0] *= 2;
        b[1] *= 2;
    }
}

pragma solidity ^0.8.0;
contract Mutate {
    uint32[] a;
    bytes32[] b;
    uint8 memoryLocation;
    function mutateArray(uint32[] memory b) public pure {
        b[memoryLocation] *= 2;
        memoryLocation = (memoryLocation + 1) % b.length;
    }
    function reverseArray(uint32[] memory b) public pure {
        uint8 memoryLocation = b.length - 1;
        for (; memoryLocation!= 0; memoryLocation--) {
            bytes32 memory temp = b[memoryLocation];
            b[memoryLocation] = b[0];
            b[0] = temp;
        }
    }
}
