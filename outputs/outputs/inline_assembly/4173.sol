pragma solidity ^0.8.0;
contract Mutators {
    function set (uint a) public returns (uint) {
        a = 10;
        return a;
    }
}
