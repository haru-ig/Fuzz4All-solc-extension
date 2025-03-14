pragma solidity ^0.8.0;
contract Test1 {
    address[][][] memoryEmpty;
    function MemoryAddresses() public {
        memoryEmpty.push([]);
        memoryEmpty.push([]);
    }
}
