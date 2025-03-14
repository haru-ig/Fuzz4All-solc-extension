pragma solidity ^0.8.0;
contract NewMutatedAbiCoder2 is NewMutatedAbiCoder {
    function foo(uint a, uint b, uint c) public pure returns (uint) {
        return 1*a + 2*b^c^(3*a);
    }
    function bar(uint a, uint b, uint c) public pure returns (uint) {
        return 1*a + 2*b^c^(3*a);
    }
}
contract MutatedAbiCoderTester {
    function testSimple() public {

        NewMutatedAbiCoder newMutatedAbiCoder;
        emit MutatedMessage(newMutatedAbiCoder.foo(1, 2, 3));
        emit MutatedMessage(newMutatedAbiCoder2.foo(1, 2, 3));
    }
    event MutatedMessage(uint number);
}
