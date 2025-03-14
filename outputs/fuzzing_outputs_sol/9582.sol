pragma solidity ^0.8.0;
contract MutatedCaller {
    function mutated(uint _amount) public {
        emit Mutated();
        address(address(this)).balance;
        uint x = _amount;
    }
    event Mutated();
}
