pragma solidity ^0.8.0;
struct Counter {
    uint256 value;
}
contract Compiled1 {
    Counter storage counter;
    constructor(uint256 init_value) public {
        counter.value = init_value;
    }
     function increment() public {
        counter.value += 1;
    }
}
