pragma solidity ^0.8.0;
contract NewMutatedAbiCoderV3 {
    function foo(uint a, uint b, uint c) public pure returns (uint) {
        return uncheckedCast(a + b * c);
    }
    function bar(uint a, uint b, uint c) public pure returns (uint) {
        return uncheckedCast(a + b * c);
    }
    function uncheckedCast(uint x) private pure returns (uint) {
        return x;
    }
}<jupyter_output><empty_output>
