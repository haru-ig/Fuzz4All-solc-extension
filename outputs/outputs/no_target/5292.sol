pragma solidity ^0.8.0;
contract MutatedExamples9 {
    bytes32  constant X = keccak256("X");

    function mutated4(bytes32) public returns(uint) {
        return uint(X);
    }
    function mutated5(address) public {
        bytes memory c;
        assembly { c := "0x" }
        return c;
    }
    function mutated6(address a) public returns(bool) {
        return bytes(a).length > 0;
    }
    function mutated7(address a) public returns(bool) {
        uint length;
        assembly { length := extcodesize(a) }
        return length > 0;
    }
    function mutated8(address) public returns(uint8) {
        return 33;
    }
    function mutated9(address) public returns(uint16) {
        return type(uint16).max;
    }
    function mutated10(uint) public {
        uint x = type(uint256).max;
        return (uint8(x) * 2040 / x);
    }
}
