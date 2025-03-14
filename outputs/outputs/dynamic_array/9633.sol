pragma solidity ^0.8.0;
contract Mutated {
    uint256[] public a;
    uint256[] public b;
    constructor () public {
        b.length++;
        a = a.converts(b);
    }
}


#pragma solidity ^0.8.0;
