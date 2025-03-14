pragma solidity ^0.8.0;
contract B {
    uint M;
    function setOutputs(uint c) public {
        M = c;
    }
    function getOutputs() public returns (uint r) {
        r = c;
    }
}
