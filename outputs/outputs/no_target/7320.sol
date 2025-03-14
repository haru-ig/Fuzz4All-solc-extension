pragma solidity ^0.8.0;
contract NewMutatedAbiCoder2 is NewMutatedAbiCoder
{
    constructor() public {}
    function foo(uint a, uint b, uint c) public view returns (uint) {
        return a + b * c;
    }
    function bar(uint a, uint b, uint c) public view returns (uint) {
        return a + b * c;
    }
}

contract TestMutatedAccodingToV08 {
    NewMutatedAbiCoder newMutatedAbiCoder;
    NewMutatedAbiCoder2 newMutatedAbiCoder2;
    address mutatedSender;

    modifier testMutated() {
        mutatedSender = msg.sender;
        _;
    }

    function test() public testMutated
    {
        newMutatedAbiCoder.foo(1, 2, 3);
        newMutatedAbiCoder2.foo(1, 2, 3);
        newMutatedAbiCoder.bar(1, 2, 3);
        newMutatedAbiCoder2.bar(1, 2, 3);
    }
}
