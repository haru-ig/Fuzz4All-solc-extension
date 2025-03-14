pragma solidity ^0.8.0;
contract MutateAssembly12 {
    function test() public view {
        bytes memory x = "0";
        assembly {
            let x := mload(0x0)
            x := add(x, 0x20)
            x := mload(0x0)
        }
    }
}
