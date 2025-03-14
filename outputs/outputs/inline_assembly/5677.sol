pragma solidity ^0.8.0;
contract MutatedBlock9Mutator4 {
    uint public _var = 1;
    function test() public returns (uint) {
        uint y;
        y = x;
        y = x ^ x + y ^ y;
        return y;
    }
    uint x;
    uint [2] memory y;
    require(x!= 0);
    bytes32 s;
}
