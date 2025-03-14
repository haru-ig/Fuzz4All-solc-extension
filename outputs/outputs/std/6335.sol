pragma solidity ^0.8.0;
contract Mutated {
    New newInstance;
    function increaseValue(address userAddress) public{
        userToValue[userAddress] = userToValue[userAddress] + 1;
    }
}
