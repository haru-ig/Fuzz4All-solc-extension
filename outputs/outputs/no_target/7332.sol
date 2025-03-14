pragma solidity ^0.8.0;
contract NewMutatedAbiCoder {
    function foo(uint a) public pure returns (uint) {
        return a | uint(0xffffffff);
    }
    function bar(uint a) public pure returns (uint) {
        a = -2 ** 256;
        return a | uint(0xffffffff);
    }
}
