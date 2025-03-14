pragma solidity ^0.8.0;
contract Mutator {
    uint256 storedUint = 0;

    constructor () {
        storedUint = 11;
        storedUint = 22;
    }


    fallback () external payable{
        if (storedUint!= 22) revert();

        storedUint = storedUint + 0x20;
    }
}
