pragma solidity ^0.8.0;
contract NewMutatedAbiCoder2 {
    function foo(uint a, uint b, uint c) public pure returns (uint) {
        return a + b * c;
    }
    function bar(uint a, uint b, uint c) public pure returns (uint) {
        return a + b * c;
    }
    function barWithOverflow(uint a, uint b, uint c) public pure returns (uint, uint) {
        return a + b * c;
    }
}
