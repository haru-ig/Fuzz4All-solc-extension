pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutated() public {
        emit Mutated();
        address(this).balance;
    }
    event Mutated();
}
