pragma solidity ^0.8.0;
contract MutateAssembly9 {
    function mutate() public {
        bytes memory a = "some";
        bytes memory b = "data";
        assembly {
            a := mload(1)
            b := a
        }
        b := "somedata";
    }
}
