pragma solidity ^0.8.0;
contract Mutated2 {
    function test() public pure {
        assembly {
            set storageSlot 0x2342342342a
            set storageSlot 0x1232323234
        }
    }
}
