pragma solidity ^0.8.0;
contract Incrementer {
    function increment_internal() public pure {
        ++_increment;
    }
    function increment() public pure {
        Incrementer.increment_internal();
    }
    uint public _increment;
}
