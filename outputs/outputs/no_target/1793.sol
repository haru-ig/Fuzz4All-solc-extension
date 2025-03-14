pragma solidity ^0.8.0;
contract Mutate2 {
    uint public _1;
    uint public _2;
    constructor() public {
       _1 += 2 ether;
       _2 += 1 ether;
    }
}
