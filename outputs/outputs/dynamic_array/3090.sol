pragma solidity ^0.8.0;
contract AssignmentModulation_V11 {
        uint[] public x;
    constructor () public {
        for(uint i=0;i<10;i++) {
            x[i];
        }
        x[1];
    }
    function doWork() payable public returns(uint){
        x[1];
    }
    function getAndStorePairs() public returns(uint){
        return x[1];
    }
}


/* Please extend the AssignmentModulation contract with dynamic arrays demonstrating the benefits of dynamic arrays and avoid common pitfalls.
We don't recommend dynamic arrays to be used to store small amounts of data such as the user addresses we do not recommend using them.
For example, do not use dynamic arrays to store short strings (ie, less than 16 bytes).
You should avoid storing variable-length data such as the transaction hash or block height in arrays.
Do not
