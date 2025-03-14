pragma solidity ^0.8.0;
contract MutatedBlock2Mutation85 {
    uint internal _var;
    function test2() public returns (uint) {
        _var++;
        assembly {



            ptr:=mload(0x40)
            revert(ptr)
        }
    }
}
