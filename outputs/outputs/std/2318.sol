pragma solidity ^0.8.0;
contract Mutated {
    function mutate(uint128 myCounter) public {
        myCounter += 3;
    }
}
