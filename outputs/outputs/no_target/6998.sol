pragma solidity ^0.8.0;
contract MutateTest {
    function externalFunction(bytes32 param) public {
        param = new bytes32(0);
    }
}
