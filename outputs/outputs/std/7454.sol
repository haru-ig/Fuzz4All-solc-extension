pragma solidity ^0.8.0;
contract Mutate2 {
    constructor(uint256 a) public {

        for (uint i = 0; i < a; i ++) {
            uint256 newElement = ((i+1) + ((i+2)) * 2);
            require(mutateFromFirst(newElement) == (newElement + 4 + ((i+2) * 4)));
            require(mutateFromSecond(newElement) == (newElement + 4 + ((i+3) * 4)));
            require(mutateFromLast(newElement) == (newElement + 4 + ((i+4) * 4)));
        }
    }
}
