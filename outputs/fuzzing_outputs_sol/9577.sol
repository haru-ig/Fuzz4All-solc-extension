pragma solidity ^0.8.0;
contract MutatingCaller {
    function mutated() public mutate {
        emit Mutated();
        address(this).balance;
    }
    event Mutated();
}
