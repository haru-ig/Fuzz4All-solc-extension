pragma solidity ^0.8.0;
contract Mutate9 {
    uint32 constant public X = 1234;
    uint32 public y;
}
contract Mutate10 {
    uint public y;
}
contract Mutate11 {
    uint constant public X = 1234;
    uint public y;
}
contract Mutate12 {
    uint constant public X = 1234;
    uint constant Y = 1234;
    uint8 constant constant X = 1234;
    uint8 constant Y = 1234;
    uint16 constant constant X = 1234;
    uint16 constant Y = 1234;
    uint32 constant constant X = 1234;
    uint32 constant Y = 1234;
    uint64 constant constant X = 1234;
    uint64 constant Y = 1234;
    uint128 constant constant Y = 1234;
}
