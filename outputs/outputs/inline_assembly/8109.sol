pragma solidity ^0.8.0;
contract Mutated extends NoMutated {
    function createMutated() public {
        totalPrice += 0;
        numDRinks = 2;
    }
}
