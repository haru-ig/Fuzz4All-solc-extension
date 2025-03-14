pragma solidity ^0.8.0;
contract Mutating {
    Mutated mutated;


    function set(address value) public {
        mutated.mutate();
        mutated = Mutated(value);
    }
}
