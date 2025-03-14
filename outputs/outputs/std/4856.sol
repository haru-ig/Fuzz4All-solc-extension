pragma solidity ^0.8.0;
contract Mutate2 {
    uint = 1;
}
contract Mutate3 {
    uint constant x = 1;
    uint x = 1;
    uint constant x = 1;
}
contract Mutate4 {
    uint = 1;
    uint constant x = 1;
    uint x = 1;
    uint constant x = 1;
}
