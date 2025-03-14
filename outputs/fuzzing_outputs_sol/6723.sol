pragma solidity ^0.8.0;
contract Mutated {
    function Mutate(uint a) public {
        emit Log(a);
    }
    event Log(uint a);
}
