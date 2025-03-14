pragma solidity ^0.8.0;
contract Mutator6{
    uint public j;
    constructor () public {
        j = 0xfffffffffff+1;
        Mutator5 c = Mutator5(0);
        c.i = 0;
    }
}
