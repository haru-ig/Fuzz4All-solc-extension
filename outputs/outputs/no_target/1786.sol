pragma solidity ^0.8.0;
contract Mutate4 {
    uint public _1;
    uint public immutable _2;
    uint public _3;
    constructor() public {
       _1 += 3;
       _2 = 2;
       _3 = 3;
    }
}
