pragma solidity ^0.8.0;
contract Mutator {
    function Mut(uint a) public {
        emit MutLog(a);
    }
    event MutLog(uint a);
}
