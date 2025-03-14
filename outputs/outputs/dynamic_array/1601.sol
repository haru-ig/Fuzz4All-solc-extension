pragma solidity ^0.8.0;
contract MutatedDynamicArrays5 {

    function test5(bytes memory b) public {
        bytes memory c = new bytes(32);
        c = new bytes(10);
    }
}
