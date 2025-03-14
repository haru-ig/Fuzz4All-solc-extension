pragma solidity ^0.8.0;
contract Mutated {
    struct Event {
        uint startTime;
        uint endTime;
    }
    mapping(uint => uint) a;
    mapping(uint => uint) b;
}
