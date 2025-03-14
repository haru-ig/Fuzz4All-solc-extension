pragma solidity ^0.8.0;
contract Mutator10 {
    uint public i;
    uint private s;
    constructor () public {
        {

            s += i + uint(-1);
        }

        i -= uint(s >> 31);
    }
}
