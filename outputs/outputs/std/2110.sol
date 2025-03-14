pragma solidity ^0.8.0;
contract Mutated_2_4_1 {
    uint a=10;
    uint b = 20;
    void foo(uint result) public pure {
            result += b;
            result += a;
    }
}
