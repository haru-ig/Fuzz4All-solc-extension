pragma solidity ^0.8.0;
contract Mutator {
    function mutate(uint256 value) public returns (uint256) {
        return(value+1);
    }
}
